package com.example.pizzeria.service;


import com.example.pizzeria.DTO.FilterGoodsDTO;
import com.example.pizzeria.Helpers.Utilities;
import com.example.pizzeria.entity.GoodsEntity;
import com.example.pizzeria.entity.ProductEntity;
import com.example.pizzeria.repository.GoodsRepo;
import com.example.pizzeria.repository.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class GoodsService {

    @Autowired
    private GoodsRepo goodsRepo;
    @Autowired
    private ProductRepo productRepo;

    public List<GoodsEntity> getAllGoods(FilterGoodsDTO dto) {
        int maxPrice = dto.getMaxPrice() == 0 ? Integer.MAX_VALUE : Math.min(dto.getMaxPrice(), Integer.MAX_VALUE);
        return goodsRepo.filterByFields(dto.getName(), Math.max(dto.getMinPrice(), 0), maxPrice);
    }
    public List<GoodsEntity> getAllByIds(List<UUID> ids) {
        List<GoodsEntity> result = new ArrayList<>();
        for(UUID id: ids) {
            GoodsEntity item = goodsRepo.findById(id).orElseGet(null);
            if(item != null) {
                result.add(item);
            }
        }
        return result;
    }
    public GoodsEntity createGoodsItem(GoodsEntity goodsItem) throws Exception {
        goodsItem.setDiscount(0);
        if(goodsItem.getPrice() <= 0) {
            throw new Exception("Цена должна быть больше нуля");
        }
        System.out.println("prudct size:" + goodsItem.getProducts().size());
        System.out.println("prudct 0:" + goodsItem.getProducts().get(0).getName());
        if(goodsItem.getProducts().size() == 0) {
            throw new Exception("Вы не выбрали ингридиенты");
        }
        for(ProductEntity productEntity: goodsItem.getProducts()) {
            productEntity.addGoods(goodsItem);
            productRepo.save(productEntity);
        }
        goodsItem.setCurrentPrice(goodsItem.getPrice());
        goodsRepo.save(goodsItem);
        return goodsItem;
    }

    public GoodsEntity editDiscount(UUID goodsItemId, int discount) throws Exception {
        if(discount < 0) {
            discount = 0;
        } else if (discount > 99) {
            discount = 99;
        }
        GoodsEntity goodsItemFromDb = goodsRepo.findById(goodsItemId).orElseThrow(() -> new Exception("Товар не найден"));
        goodsItemFromDb.setDiscount(discount);
        goodsItemFromDb.setCurrentPrice(Utilities.ceil(goodsItemFromDb.getPrice() * (100 - discount) / 100));
        goodsRepo.save(goodsItemFromDb);
        return goodsItemFromDb;
    }

    public GoodsEntity editGoodsInfo(UUID goodsItemId, GoodsEntity goodsItem) throws Exception {
        GoodsEntity goodsItemFromDb = goodsRepo.findById(goodsItemId).orElseThrow(() -> new Exception("Товар не найден"));
        if(goodsItem.getPrice() <= 0) {
            throw new Exception("Цена должна быть больше нуля");
        }
        goodsItemFromDb.setName(goodsItem.getName());
        goodsItemFromDb.setDescription(goodsItem.getDescription());
        goodsItemFromDb.setGoodsType(goodsItem.getGoodsType());
        goodsItemFromDb.setPrice(goodsItem.getPrice());
        goodsItemFromDb.setCurrentPrice(Utilities.ceil(goodsItemFromDb.getPrice() * (100 - goodsItemFromDb.getDiscount()) / 100));
        goodsItemFromDb.setImg(goodsItem.getImg());
        goodsRepo.save(goodsItemFromDb);
        return goodsItemFromDb;
    }
}

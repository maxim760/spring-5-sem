package com.example.pizzeria.model;

import com.example.pizzeria.entity.GoodsEntity;
import com.example.pizzeria.entity.ProductEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
public class Goods {
    private UUID id;
    private String goodsType;
    private int discount;
    private int price;
    private int currentPrice;
    private String name;
    private String description;
    private String img;
    private List<ProductEntity> products;

    public Goods () {}

    public static Goods toModel(GoodsEntity goodsEntity) {
        Goods goods = new Goods();
        goods.setGoodsType(goodsEntity.getGoodsType());
        goods.setDescription(goodsEntity.getDescription());
        goods.setDiscount(goodsEntity.getDiscount());
        goods.setPrice(goodsEntity.getPrice());
        goods.setCurrentPrice(goodsEntity.getCurrentPrice());
        goods.setImg(goodsEntity.getImg());
        goods.setName(goodsEntity.getName());
        goods.setId(goodsEntity.getId());
        goods.setProducts(goodsEntity.getProducts());
        return goods;
    }
    public static List<Goods> toModel(List<GoodsEntity> goodsEntities) {
        List<Goods> goods = new ArrayList<Goods>();
        for (GoodsEntity item: goodsEntities) {
            goods.add(toModel(item));
        }
        return goods;
    }
}

package com.example.pizzeria.service;

import com.example.pizzeria.DTO.CreateOrderDTO;
import com.example.pizzeria.Helpers.Utilities;
import com.example.pizzeria.entity.GoodsEntity;
import com.example.pizzeria.entity.OrderEntity;
import com.example.pizzeria.entity.UserEntity;
import com.example.pizzeria.repository.GoodsRepo;
import com.example.pizzeria.repository.OrderRepo;
import com.example.pizzeria.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class OrderService {

    @Autowired
    private OrderRepo orderRepo;
    @Autowired
    private GoodsRepo goodsRepo;
    @Autowired
    private UserRepo userRepo;

    @Value("${delivery.price}")
    private int deliveryPrice;

    public OrderEntity createOrder(CreateOrderDTO orderDTO, UserEntity currentUser) throws Exception {
        System.out.println("create order 1");
        if(orderDTO.getGoodsIds().size() == 0) {
            throw new Exception("В заказе должен быть минимум 1 товар");
        }
        OrderEntity newOrder = new OrderEntity();
        Date currentDate = new Date();
        SimpleDateFormat formatter = Utilities.getDefaultDateFormat();
        String createDate = formatter.format(currentDate);
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Long timestampTime = timestamp.getTime();
        System.out.println("create order 2");
        Map<UUID, Integer> hm = new HashMap<>();
        for(UUID id: orderDTO.getGoodsIds()) {
            hm.put(id, hm.getOrDefault(id, 0) + 1);
        }
        int price = 0;
        for(UUID goodsItemId: orderDTO.getGoodsIds()) {
            GoodsEntity goodsItemFromDb = goodsRepo.findById(goodsItemId).orElseThrow(() -> new Exception("Товар не найден"));
            if(goodsItemFromDb.getProducts().stream().anyMatch(i -> i.getCount() < hm.getOrDefault(goodsItemId, 0))) {
                throw new Exception("Продуктов недостаточно для приготовления заказа");
            }
            newOrder.addGoods(goodsItemFromDb);
            price += goodsItemFromDb.getCurrentPrice();
        }
        System.out.println("create order 3");
        newOrder.setUser(currentUser);
        newOrder.setDateCreate(createDate);

        boolean withDelivery = orderDTO.getWithDelivery() != null;
        if(withDelivery) {
            price += deliveryPrice;
        }
        System.out.println("create order 4");
        if(price > currentUser.getCash()) {
            throw new Exception("Недостаточно денег на балансе");
        }
        newOrder.setPrice(price);
        currentUser.setCash(currentUser.getCash() - price);
        newOrder.setTimestamp(timestampTime);
        newOrder.setWithDelivery(withDelivery);
        System.out.println("create order 5");
        System.out.println(newOrder.getId());
        for(GoodsEntity goodsItem: newOrder.getGoods()) {
            goodsRepo.save(goodsItem);
        }
        System.out.println("create order 6");
        orderRepo.save(newOrder);
        userRepo.save(currentUser);
        System.out.println("create order 7");
        return newOrder;

    }

    public List<OrderEntity> getOrders(UserEntity user) {
        if(user.getRoles().stream().anyMatch(item -> item.getAuthority().equals("ADMIN"))) {
            return orderRepo.findAll();
        }
        return orderRepo.getAllOrders(user.getId());
    }
    public boolean deleteOrder(UUID id, UserEntity user) {
        try {
            Optional<OrderEntity> orderItem = orderRepo.findById(id);
            System.out.println("id:" + id);
            System.out.println(orderItem.isEmpty());
            if(orderItem.isEmpty()) {
                return false;
            }
            List<GoodsEntity> goods = orderItem.get().getGoods();
            orderRepo.deleteById(id);
            List<OrderEntity> userOrders = user.getOrders();
            userOrders.removeIf((order) -> order.getId().equals(id));
            user.setOrders(userOrders);
            for(GoodsEntity goodsItem: goods) {
                System.out.println("for start");
                goodsItem.removeOrder(id);
                goodsRepo.save(goodsItem);
                System.out.println("for end");
            }


            return true;
        } catch(Exception e) {
            System.out.println("cathc");
            e.printStackTrace();
            return false;
        }
    }
    public Long getSummaryCost(UserEntity user) {
        if(user.getRoles().stream().anyMatch(item -> item.getAuthority().equals("ADMIN"))) {
            Long result = orderRepo.selectTotalCostAllUsers();
            return result == null ? 0L : result;
        }
        Long result = orderRepo.selectTotalCost(user.getId());
        return result == null ? 0L : result;
    }
}

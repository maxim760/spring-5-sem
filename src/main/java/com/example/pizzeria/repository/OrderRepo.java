package com.example.pizzeria.repository;

import com.example.pizzeria.entity.OrderEntity;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface OrderRepo extends JpaRepository<OrderEntity, UUID> {
    public List<OrderEntity> findAllByUser_IdOrderByTimestampDesc(UUID userId);
    public List<OrderEntity> findAllByOrderByTimestampDesc();
    default List<OrderEntity> getAllOrders(UUID userId) {
        return findAllByUser_IdOrderByTimestampDesc(userId);
    }
    @Query("SELECT SUM(m.price) FROM OrderEntity m where m.user.id = ?1")
    public Long selectTotalCost(UUID userId);
    @Query("SELECT SUM(m.price) FROM OrderEntity m")
    public Long selectTotalCostAllUsers();
}

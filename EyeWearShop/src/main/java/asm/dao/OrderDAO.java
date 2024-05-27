package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.Orders;



public interface OrderDAO extends JpaRepository<Orders, Long> {

}

package asm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.OrderDetails;
import asm.entity.Products;



public interface OrderDetailDAO extends JpaRepository<OrderDetails, Long> {
	 
}

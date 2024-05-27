package asm.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;



import asm.entity.Products;


public interface ProductDAO extends JpaRepository<Products , Integer> {
	
//	@Query("SELECT o FROM Products INNER JOIN Categories ON Products.CategoryId = Categories.Id")
//	List<Products> findByCategory(Integer keywords);
	
	@Query("SELECT o FROM Products o WHERE o.name LIKE ?1")
	Page<Products> findByKeywords(String keywords, Pageable pageable);
}

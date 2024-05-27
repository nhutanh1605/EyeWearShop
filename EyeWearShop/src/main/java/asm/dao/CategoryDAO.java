package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.entity.Categories;



public interface CategoryDAO extends JpaRepository<Categories, String> {

	

}

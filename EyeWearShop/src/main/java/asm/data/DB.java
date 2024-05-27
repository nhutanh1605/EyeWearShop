package asm.data;

import java.util.ArrayList;
import java.util.List;

import asm.entity.Products;



public class DB {
	public static List<Products> cart;

    static {
        cart = new ArrayList<>();
    }
	
	
}

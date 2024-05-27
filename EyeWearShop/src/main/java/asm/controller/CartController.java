package asm.controller;


import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import asm.dao.CategoryDAO;
import asm.dao.OrderDetailDAO;
import asm.dao.ProductDAO;

import asm.entity.Categories;
import asm.entity.OrderDetails;
import asm.entity.Products;

import asm.service.SessionManager;
import asm.service.SessionService;
import asm.data.DB;

@Controller
public class CartController {
	
	@Autowired
	ProductDAO prodao;
	
	@Autowired
	OrderDetailDAO detaildao;
	
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	CategoryDAO cadao;
	

	@Autowired
	SessionManager sessionn;
	
	@Autowired
	SessionService session;

	
//	@RequestMapping("/shop")
//	public String shop(Model model) {
//		List<Products> products = dao.findAll();
//		model.addAttribute("products", products);
//		return "shop";
//	}
	
	
//	
//	@RequestMapping("/shop")
//	public String showform(Model model) {
//		List<Products> productList= prodao.findAll();
//		model.addAttribute("products", productList);
//		
//		
//		
//		return "shop";
//	}
	
	@RequestMapping("/cart")
	public String cart(@ModelAttribute("product") Products product,  Model model) {
		Set<Products> cartItems= sessionn.getCart();
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("totalPrice", totalPrice);
	    return "cart";
		
	}
	
	
	@PostMapping("/add-to-cart")
	public String addToCart(@ModelAttribute("product") Products product,  Model model) {
		
		sessionn.addToCart(product);
		Set<Products> cartItems= sessionn.getCart();
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("totalPrice", totalPrice);
	    return "cart";
	}


	@GetMapping("/cart/clear")
	public String clear(Model model) {
		sessionn.clearCart(request);
		List<Products> productList = prodao.findAll();
		model.addAttribute("product", productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);
		return "redirect:/cart";
	}
	
	
	@GetMapping("cart/remove/{productId}")
	public String removeFromCart(@PathVariable("productId") Integer productId, Model model) {
		sessionn.removeFromCart(productId);
		List<Products> productList = prodao.findAll();
		model.addAttribute("products",productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);
		
		
		return "redirect:/cart";
	}
	
	

	@GetMapping("/detail/{productId}")
	public String showProductDetail(@PathVariable("productId") Integer productId, Model model) {
		Optional<Products> productOptional =  prodao.findById(productId);
		if(productOptional.isPresent()) {
			Products product = productOptional.get();
			model.addAttribute("product",product);

		}
		return "shopdetail";
	}
	
	@RequestMapping("/shop")
	public String paginate(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 6);
		Page<Products> pages = prodao.findAll(pageable);
		model.addAttribute("page", pages);
		return "shop";
	}
	
	@PostMapping("/shop")
	public String searchAndPage(Model model,@RequestParam("name") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
		String kwords = name.orElse(session.get("name"));
		session.set("name", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Products> page = prodao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);
		

		return "shop";

	}
	
	@PostMapping("cart/update/{productId}")
	public String updateCartQuantity(
			
			@PathVariable("productId") Integer productId, 
			@RequestParam("qty") Integer quantity,
			Model model) {
		sessionn.updateCartQuantity(productId, quantity);
		List<Products> productList=prodao.findAll();
		model.addAttribute("product", productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);
		
		return "redirect:/cart";
		
		
	}

	
	@GetMapping("/shop/{categoryID}")
	public String Showdanhmuc(@PathVariable("categoryID") String categoryId, Model model, @RequestParam("page") Optional<Integer> page) {
		Optional<Categories> cateOptional = cadao.findById(categoryId);
		Categories category = cateOptional.get();
		Pageable pageable = PageRequest.of(page.orElse(0), 6);
		Page<Products> pages = (Page<Products>) category.getProducts();
		model.addAttribute("page", pages);


		return "redirect:/shop";
	}
	
	
	
}

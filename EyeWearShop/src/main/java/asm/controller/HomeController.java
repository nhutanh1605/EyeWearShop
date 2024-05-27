package asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@GetMapping("/index")
	public String Index() {	
		return "index";
	}
//	@RequestMapping("/login1")
//	public String login() {
//		return "login1";
//	}
//	@RequestMapping("/cart")
//	public String cart() {
//		return "cart";
//	}
//	@RequestMapping("/shop")
//	public String shop() {
//		return "shop";
//	}
	@RequestMapping("/shop-single")
	public String shopsingle() {
		return "shop-single";
	}
}

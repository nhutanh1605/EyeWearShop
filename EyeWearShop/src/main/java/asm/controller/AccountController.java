package asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import asm.dao.AccountDAO;
import asm.dao.CategoryDAO;
import asm.entity.Accounts;
import asm.entity.Categories;
import asm.service.CookieService;
import asm.service.ParamService;
import asm.service.SessionLoginImpl;
import asm.service.SessionService;


@Controller

public class AccountController {

	@Autowired
	CookieService cookieService;

	@Autowired
	ParamService paramService;

	@Autowired
	SessionService sessionService;
	
	@Autowired
	AccountDAO accdao;
	
	@Autowired
	CategoryDAO cadao;

	@Autowired
	SessionLoginImpl session;

	
	@GetMapping("/login1")
	public String login() {
		return "account/login1";
	}

	@PostMapping("/login1")
	public String login(Model model, @RequestParam("username") String username, @RequestParam("password") String password) 
	{
		
		
		try {
			Accounts user= accdao.getOne(username);
			if(!user.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			}else {
				session.set("user", user);
				String uri=(String) session.get("security-uri");
				if(uri !=null) {
					return "redirect:" +uri;
				}else {
					model.addAttribute("message","Login succeed");
					return "redirect:/index";
				}
			
			}
			}catch(Exception e) {
				model.addAttribute("message", "Invalid username");
			
		}
		return "/account/login1";
	
	}
//	@RequestMapping("/admin/loginIndex")
//	public String loginIndex(Model model) {
//		Categories item = new Categories();
//		model.addAttribute("item", item);
//		List<Categories> items = cadao.findAll();
//		model.addAttribute("items", items);
//		return "admin/loginIndex";
//	}
//	@RequestMapping("/category/edit/{id}")
//	public String edit(Model model, @PathVariable("id") String id) {
//	Categories item = cadao.findById(id).get();
//	model.addAttribute("item", item);
//	List<Categories> items = cadao.findAll();
//	model.addAttribute("items", items);
//	return "/admin/loginIndex";
//	}
//	@RequestMapping("/category/create")
//	public String create(Categories item) {
//	if(item.getId()!="") {
//		cadao.save(item);
//	}
//	return "redirect:/admin/loginIndex";
//	}
//	@RequestMapping("/category/update")
//	public String update(Categories item) {
//		cadao.save(item);
//		return "redirect:/category/edit/" + item.getId();
//	}
//	@RequestMapping("/category/delete/{id}")
//	public String delete(@PathVariable("id") String id,Model model,@ModelAttribute("item")  Categories ca) {
//		try {
//	        
//	            cadao.deleteById(id);
//	            
//	        
//	    } catch (DataIntegrityViolationException e) {
//	        // Xử lý lỗi khóa ngoại
//	        model.addAttribute("error_message", "Cannot delete the category. It is referenced by other entities.");
//	    }
//	    model.addAttribute("items", cadao.findAll());
//
//	    return "/admin/loginIndex";
//		    
//
//	
//	}
	
	
	@RequestMapping("/admin/loginIndex")
	public String index(Model model) {
		Categories category = new Categories();
		model.addAttribute("categoryItem", category);
		List<Categories> categories = cadao.findAll();
		model.addAttribute("categoryItems", categories);
		return "/admin/loginIndex";
	}


	
	@PostMapping("/category/create")
	public String category_create(Model model, @Validated @ModelAttribute("categoryItem") Categories ca, BindingResult result) {
		if(!result.hasErrors()) {
			if(!cadao.findById(ca.getId()).isEmpty())
				model.addAttribute("error_category","ID da ton tai");
			else {
				cadao.save(ca);
				model.addAttribute("success_category","Create Success!");
			}
		}
		model.addAttribute("categoryItems", cadao.findAll());
		return "redirect:/admin/loginIndex";
	}
	
	@PostMapping("/category/update")
	public String category_update(Model model, @Validated @ModelAttribute("categoryItem") Categories ca, BindingResult result) {
		if(!result.hasErrors()) {
			if(cadao.findById(ca.getId()).isEmpty())
				model.addAttribute("error_category","ID khong ton tai");
			else {
				cadao.save(ca);
				model.addAttribute("success_category","Update Success!");
			}
		}
		model.addAttribute("categoryItems", cadao.findAll());
		return "/admin/loginIndex";
	}
	

	
	@GetMapping("/category/delete")
	public String category_delete(Model model, @RequestParam("id") String id, @ModelAttribute("categoryItem") Categories ca) {
	    try {
	        if (cadao.findById(ca.getId()).isEmpty())
	            return "redirect:/admin/loginIndex";
	        else {
	            cadao.deleteById(id);
	            model.addAttribute("success_category", "Delete success!");
	        }
	    } catch (DataIntegrityViolationException e) {
	        // Xử lý lỗi khóa ngoại
	        model.addAttribute("error_category", "Cannot delete the category. It is referenced by other entities.");
	    }
	    model.addAttribute("categoryItems", cadao.findAll());

	    return "/admin/loginIndex";
	}
	
	@GetMapping("/category/edit")
	public String category_edit(Model model, @RequestParam("id") String id, @ModelAttribute("categoryItem") Categories ca) {
		if(cadao.findById(ca.getId()).isEmpty()) 
			return "redirect:/admin/loginIndex";
		else {
			Categories category = cadao.findById(id).get();
			ca.setId(category.getId());
			ca.setName(category.getName());
		}
		model.addAttribute("categoryItems", cadao.findAll());
		return "/admin/loginIndex";
	}
}

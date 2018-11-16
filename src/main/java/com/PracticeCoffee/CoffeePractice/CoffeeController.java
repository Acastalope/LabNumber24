package com.PracticeCoffee.CoffeePractice; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.PracticeCoffee.CoffeePractice.entity.Items;


@Controller
public class CoffeeController {
	
	@Autowired
	//private Coffeedao coffeedao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("MyIndex", "firstPage", "Welcome to Coffeetime!");
		return mv;
	}
	
/*
	public ModelAndView listMenuItem(@RequestParam(value = "category", required = false) String category) {
		ModelAndView mv = new ModelAndView("menu");
		if (category != null && !category.isEmpty()) {
			mv.addObject("item", coffeedao.findBy(category));
			mv.addObject("category", category);
		} else {
			mv.addObject("food", dao.findAllFoods());

		}

		return mv;*/
	@RequestMapping("/menu")	
	public ModelAndView listMenuItem(/*@RequestParam(value = "item", required = false) String item*/) {
	ModelAndView mv = new ModelAndView("menu");
	mv.addObject("item", coffeedao.findAllItems());

	return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView registerTest() {
		return new ModelAndView("register");
	}
	
	@RequestMapping("formresults")
	public ModelAndView formTest(@RequestParam("firstname") String firstname, @RequestParam("lastname") String lname, @RequestParam("email") String email, @RequestParam("phonenumber") String phonenumber, @RequestParam("password") String pword) {
		ModelAndView mv = new ModelAndView ("formpage");
		mv.addObject("firstname", firstname);
		mv.addObject("lastname", lname);
		mv.addObject("password", pword);
		mv.addObject("phonenumber", phonenumber);		
		mv.addObject("email", email);
		return mv;
	}

	@RequestMapping("/form")
	public ModelAndView listFood(@RequestParam(value="phonenumber", required=false) String phonenumber) {
		ModelAndView mv = new ModelAndView("formpage");
		//if(category != null && !category.isEmpty()) {
			mv.addObject("phonenumber", phonenumber);
			//mv.addObject("category", category);
	return mv;
}
	@RequestMapping("dropDown")
	public ModelAndView dropEx(@RequestParam("coffee") String coffee) {
		return new ModelAndView("formPage", "coffee", coffee);
	}
}
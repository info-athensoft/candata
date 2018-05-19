package com.athensoft.site.global.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TestGlobalContorller {

	@RequestMapping("/test")	
	public ModelAndView testI18N(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test");		
		return mav;
	}
	
	@RequestMapping("/test/test2.html")	
	public ModelAndView testI18N2(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/test2");		
		return mav;
	}

	@RequestMapping("/test/aboutus.html")
	public String gotoAboutus(){
		return "test/test-aboutus";
	}
	
	
	
	
}

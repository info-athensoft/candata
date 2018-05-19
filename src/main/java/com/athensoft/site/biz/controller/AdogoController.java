package com.athensoft.site.biz.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adogo")
public class AdogoController {
private static final Logger logger = Logger.getLogger(AdogoController.class);
	
	@RequestMapping("/index.html")
	public String gotoAdogoIndex(){
		logger.info("entering.. /adogo/adogo.html");
		logger.info("exiting.. /adogo/adogo.html");
		return "adogo/adogo";
	}
	
	@RequestMapping("/adogo.html")
	public String gotoAdogoIndex2(){
		logger.info("entering.. /adogo/adogo.html");
		logger.info("exiting.. /adogo/adogo.html");
		return "adogo/adogo";
	}
	
	@RequestMapping("/quickstart.html")
	public String gotoQuickStart(){
		logger.info("entering.. /adogo/quickstart.html");
		logger.info("exiting.. /adogo/quickstart.html");
		return "adogo/quickstart";
	}
	
	@RequestMapping("/register.html")
	public String gotoAdogoRegister(){
		logger.info("entering.. /adogo/register.html");
		logger.info("exiting.. /adogo/register.html");
		return "adogo/register";
	}
}

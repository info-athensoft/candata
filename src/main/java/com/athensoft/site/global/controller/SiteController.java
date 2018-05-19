package com.athensoft.site.global.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class SiteController {
	private static final Logger logger = Logger.getLogger(SiteController.class);
	
	@RequestMapping("")
	public String gotoIndex(){
		logger.info("entering	.. /");
		logger.info("exiting.. /");
		String viewName = "index";
//		String viewName = "event/onepagesite";
		return viewName;
	}
	
	@RequestMapping("/index.html")
	public String gotoIndex2(){
		logger.info("entering.. /index");
		logger.info("exiting.. /index");
		return "index";
	}
	
	
	@RequestMapping("/about/aboutus.html")
	public String gotoAboutus(){
		logger.info("entering.. /about/aboutus.html");
		logger.info("exiting.. /about/aboutus.html");
		return "about/about_us";
	}
	
	@RequestMapping("/about/sitemap.html")
	public String gotoSitemap(){
		logger.info("entering.. /about/sitemap.html");
		logger.info("exiting.. /about/sitemap.html");
		return "about/sitemap";
	}
	
	@RequestMapping("/about/comingsoon.html")
	public String gotoComingsoon(){
		logger.info("entering.. /about/comingsoon.html");
		logger.info("exiting.. /about/comingsoon.html");
		return "about/coming_soon";
	}
	
	
}

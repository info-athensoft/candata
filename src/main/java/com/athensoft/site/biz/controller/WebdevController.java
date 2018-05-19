package com.athensoft.site.biz.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.site.support.service.SupportService;


@Controller
@RequestMapping("/webdev")
public class WebdevController {
	private static final Logger logger = Logger.getLogger(WebdevController.class);
	
	
	@RequestMapping("/index.html")
	public String gotoWebdevIndex(){
		logger.info("entering.. /webdev/webdev.html");
		logger.info("exiting.. /webdev/webdev.html");
		return "webdev/webdev";
	}
	
	@RequestMapping("/webdev.html")
	public String gotoWebdevIndex2(){
		logger.info("entering.. /webdev/webdev.html");
		logger.info("exiting.. /webdev/webdev.html");
		return "webdev/webdev";
	}
	
	@RequestMapping("/webplan.html")
	public String gotoWebPlan(){
		logger.info("entering.. /webdev/webplan.html");
		logger.info("exiting.. /webdev/webplan.html");
		return "webdev/webplan";
	}
	
	@RequestMapping("/webcustom.html")
	public String gotoWebCustom(){
		logger.info("entering.. /webdev/webcustom.html");
		logger.info("exiting.. /webdev/webcustom.html");
		return "webdev/webcustom";
	}
	
	@RequestMapping("/websupport.html")
	public String gotoWebSupport(){
		logger.info("entering.. /webdev/websupport.html");
		logger.info("exiting.. /webdev/websupport.html");
		return "webdev/websupport";
	}
	
	@RequestMapping("/product.html")
	public String gotoWebdevProduct(){
		logger.info("entering.. /webdev/product.html");
		logger.info("exiting.. /webdev/product.html");
		return "webdev/product";
	}
	
	@RequestMapping("/case.html")
	public String gotoWebdevCase(){
		logger.info("entering.. /webdev/case.html");
		logger.info("exiting.. /webdev/case.html");
		return "webdev/case";
	}
	
	@RequestMapping("/livedemo.html")
	public String gotoWebdevLivedemo(){
		logger.info("entering.. /webdev/livedemo.html");
		logger.info("exiting.. /webdev/livedemo.html");
		return "webdev/livedemo";
	}
	
	@RequestMapping("/pricing.html")
	public String gotoWebdevPricing(){
		logger.info("entering.. /webdev/pricing.html");
		logger.info("exiting.. /webdev/pricing.html");
		return "webdev/pricing";
	}
	
	@RequestMapping("/webplan/order.html")
	public ModelAndView gotoWebplanOrder(@RequestParam String webplanNo){
		logger.info("entering.. /webdev/webplan/order.html");
		
		logger.info("webplanNo="+webplanNo);
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
		model.put("webplanNo", webplanNo);
		
		String viewName= "webdev/webplan_order";
		mav.setViewName(viewName);
		logger.info("exiting.. /webdev/webplan/order.html");
		return mav;
	}
	
}

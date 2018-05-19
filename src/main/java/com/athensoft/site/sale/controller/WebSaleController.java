package com.athensoft.site.sale.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.site.support.service.SupportService;

@Controller
@RequestMapping("/webdev")
public class WebSaleController {
private static final Logger logger = Logger.getLogger(WebSaleController.class);
	
	@Autowired
	private SupportService supportService;
	
	@Autowired
	public void setSupportService(SupportService supportService) {
		this.supportService = supportService;
	}
	
	
	@RequestMapping("/webcustom/quote")
	public String quote(@RequestParam("quoteStr") String quoteStr,
						@RequestParam("lang") String lang,
						@RequestParam("customerName") String customerName,
						@RequestParam("customerEmail") String customerEmail){
		logger.info("entering.. /webdev/webcustom/quote");
		
		logger.info(quoteStr);
		
		supportService.sendQuoteMail(quoteStr,customerName,customerEmail);
		
		logger.info("exiting.. /webdev/webcustom/quote");
		return "redirect:/webdev/webcustom.html?lang="+lang;
	}
	
	@RequestMapping("/webplan/order")
	public String order(@RequestParam("orderStr") String orderStr,
						@RequestParam("lang") String lang,
						@RequestParam("customerName") String customerName,
						@RequestParam("customerEmail") String customerEmail){
		logger.info("entering.. /webdev/webplan/order");
		
		logger.info(orderStr);
		
		supportService.sendWebPlanOrderMail(orderStr,customerName,customerEmail);
		
		logger.info("exiting.. /webdev/webplan/order");
		return "redirect:/webdev/webplan.html?lang="+lang;
	}
}

package com.athensoft.site.biz.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.athensoft.site.support.controller.SupportController;

@Controller
@RequestMapping("/graphic")
public class GraphicController {
	private static final Logger logger = Logger.getLogger(SupportController.class);
	
	@RequestMapping("/index.html")
	public String gotoGraphicIndex(){
		logger.info("entering.. /graphic.html");
		logger.info("exiting.. /graphic.html");
		return "graphic/graphic";
	}
	
	@RequestMapping("/graphic.html")
	public String gotoGraphicIndex2(){
		logger.info("entering.. /graphic.html");
		logger.info("exiting.. /graphic.html");
		return "graphic/graphic";
	}
	
	@RequestMapping("/demo.html")
	public String gotoGraphicDemo(){
		logger.info("entering.. /graphic/demo.html");
		logger.info("exiting.. /graphic/demo.html");
		return "graphic/demo";
	}
	
	@RequestMapping("/portfolio.html")
	public String gotoGraphicPortfolio(){
		logger.info("entering.. /graphic/portfolio.html");
		logger.info("exiting.. /graphic/portfolio.html");
		return "graphic/portfolio";
	}
	
	@RequestMapping("/case.html")
	public String gotoGraphicCase(){
		logger.info("entering.. /graphic/case.html");
		logger.info("exiting.. /graphic/case.html");
		return "graphic/case";
	}
	
	@RequestMapping("/pricing.html")
	public String gotoGraphicPricing(){
		logger.info("entering.. /graphic/pricing.html");
		logger.info("exiting.. /graphic/pricing.html");
		return "graphic/pricing";
	}
	
	@RequestMapping("/service/catalog.html")
	public String gotoServiceCataglog(){
		logger.info("entering.. /graphic/service/catalog.html");
		logger.info("exiting.. /graphic/service/catalog.html");
		return "graphic/service_catalog";
	}
	
	@RequestMapping("/service/brochure.html")
	public String gotoServiceBrochure(){
		logger.info("entering.. /graphic/service/brochure.html");
		logger.info("exiting.. /graphic/service/brochure.html");
		return "graphic/service_brochure";
	}
	
	@RequestMapping("/service/flyer.html")
	public String gotoServiceFlyer(){
		logger.info("entering.. /graphic/service/flyer.html");
		logger.info("exiting.. /graphic/service/flyer.html");
		return "graphic/service_flyer";
	}
	
	@RequestMapping("/service/menu.html")
	public String gotoServiceMenu(){
		logger.info("entering.. /graphic/service/menu.html");
		logger.info("exiting.. /graphic/service/menu.html");
		return "graphic/service_menu";
	}
	
	@RequestMapping("/service/coupon.html")
	public String gotoServiceCoupon(){
		logger.info("entering.. /graphic/service/coupon.html");
		logger.info("exiting.. /graphic/service/coupon.html");
		return "graphic/service_coupon";
	}
	
	@RequestMapping("/service/poster.html")
	public String gotoServicePoster(){
		logger.info("entering.. /graphic/service/poster.html");
		logger.info("exiting.. /graphic/service/poster.html");
		return "graphic/service_poster";
	}
	
	@RequestMapping("/service/adbanner.html")
	public String gotoServiceAdbanner(){
		logger.info("entering.. /graphic/service/adbanner.html");
		logger.info("exiting.. /graphic/service/adbanner.html");
		return "graphic/service_adbanner";
	}
	
	@RequestMapping("/service/smbanner.html")
	public String gotoServiceSmbanner(){
		logger.info("entering.. /graphic/service/smbanner.html");
		logger.info("exiting.. /graphic/service/smbanner.html");
		return "graphic/service_smbanner";
	}
	
	@RequestMapping("/service/webpic.html")
	public String gotoServiceWebpic(){
		logger.info("entering.. /graphic/service/webpic.html");
		logger.info("exiting.. /graphic/service/webpic.html");
		return "graphic/service_webpic";
	}
	
	@RequestMapping("/service/imgicon.html")
	public String gotoServiceImgicon(){
		logger.info("entering.. /graphic/service/imgicon.html");
		logger.info("exiting.. /graphic/service/imgicon.html");
		return "graphic/service_imgicon";
	}
	
	@RequestMapping("/service/fonticon.html")
	public String gotoServiceFonticon(){
		logger.info("entering.. /graphic/service/fonticon.html");
		logger.info("exiting.. /graphic/service/fonticon.html");
		return "graphic/service_fonticon";
	}
	
	@RequestMapping("/service/logo.html")
	public String gotoServiceLogo(){
		logger.info("entering.. /graphic/service/logo.html");
		logger.info("exiting.. /graphic/service/logo.html");
		return "graphic/service_logo";
	}
	
	@RequestMapping("/service/bizcard.html")
	public String gotoServiceBizcard(){
		logger.info("entering.. /graphic/service/bizcard.html");
		logger.info("exiting.. /graphic/service/bizcard.html");
		return "graphic/service_bizcard";
	}
	
	@RequestMapping("/service/imgprocess.html")
	public String gotoServiceImgprocess(){
		logger.info("entering.. /graphic/service/imgprocess.html");
		logger.info("exiting.. /graphic/service/imgprocess.html");
		return "graphic/service_imgprocess";
	}
	
	@RequestMapping("/service/wallpaper.html")
	public String gotoServiceWallpaper(){
		logger.info("entering.. /graphic/service/wallpaper.html");
		logger.info("exiting.. /graphic/service/wallpaper.html");
		return "graphic/service_wallpaper";
	}
	
	@RequestMapping("/service/ecalender.html")
	public String gotoServiceEcalender(){
		logger.info("entering.. /graphic/service/ecalender.html");
		logger.info("exiting.. /graphic/service/ecalender.html");
		return "graphic/service_ecalender";
	}
}

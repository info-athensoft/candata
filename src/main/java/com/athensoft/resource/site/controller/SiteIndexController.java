package com.athensoft.resource.site.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.resource.site.entity.SiteIndex;
import com.athensoft.resource.site.model.SiteIndexForm;
import com.athensoft.resource.site.service.SiteIndexService;
import com.athensoft.util.string.URLHelper;

@Controller
@RequestMapping("/rsc")
public class SiteIndexController {
	
	private static final Logger logger = Logger.getLogger(SiteIndexController.class);
	
	@Autowired
	private SiteIndexService siteIndexService;
	
	@Autowired
	public void setSiteIndexService(SiteIndexService siteIndexService) {
		this.siteIndexService = siteIndexService;
	}
	
	@RequestMapping("/siteindexes/create")
	public String createSiteIndex(
				@ModelAttribute("siteIndexForm") SiteIndexForm siteIndexForm,
			    @RequestParam("lang") String lang){
		logger.info("entering.. /rsc/siteindexes/create");
		
		logger.info(siteIndexForm.toString());
		logger.info("lang="+lang);
		
		SiteIndex siteIndex = new SiteIndex();
		siteIndex.setSiteUrl(URLHelper.getSiteUrl(siteIndexForm.getSiteUrl()));
		siteIndex.setSiteName(siteIndexForm.getSiteName());
		siteIndex.setSiteDesc(siteIndexForm.getSiteDesc());
		siteIndex.setSiteStatus(siteIndexForm.getSiteStatus());
		siteIndex.setSiteReferrer(siteIndexForm.getSiteReferrer());	
		
		siteIndexService.createSiteIndex(siteIndex);
		
		logger.info("exiting.. /rsc/siteindexes/create");
		return "redirect:/rsc/siteindexes.html?lang="+lang;
	}
	
}

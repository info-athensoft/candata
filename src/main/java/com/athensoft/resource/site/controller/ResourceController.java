package com.athensoft.resource.site.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.resource.site.entity.SiteIndex;
import com.athensoft.resource.site.service.SiteIndexService;

@Controller
@RequestMapping("/rsc")
public class ResourceController {
	private SiteIndexService siteIndexService;
	
	@Autowired
	public void setSiteIndexService(SiteIndexService siteIndexService) {
		this.siteIndexService = siteIndexService;
	}
	
	@RequestMapping("/siteindexes.html")
	public ModelAndView gotoSiteIndexes(){
		
		List<SiteIndex> listSiteIndex = siteIndexService.getPublicSiteIndex();
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
		
		model.put("listSiteIndex", listSiteIndex);
		
		String viewName = "resource/siteindex";
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/siteindexes2.html")
	public ModelAndView gotoSiteIndexes2(){
		
		List<SiteIndex> listSiteIndex = siteIndexService.getAllSiteIndex();
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> model = mav.getModel();
		
		model.put("listSiteIndex", listSiteIndex);
		
		String viewName = "resource/siteindex_admin";
		mav.setViewName(viewName);
		return mav;
	}
}

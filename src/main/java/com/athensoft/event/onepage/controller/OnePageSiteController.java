package com.athensoft.event.onepage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class OnePageSiteController {
	@RequestMapping("/onepagesite.html")
	public String showResume(){
		return "event/onepagesite";
	}
}

package com.athensoft.team.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/team")
public class InternshipController {
	
	@RequestMapping("/internship.html")
	public String gotoIndex(HttpServletRequest request){
		HttpSession session = request.getSession();
		String viewName = "";
		
		TeamUser tu = (TeamUser)session.getAttribute("user");
		if(tu != null){
			viewName = "team/internship";
		}else{
			viewName = "redirect:/team/signin.html?lang=zh_CN";
		}
		
		return viewName;
	}
}

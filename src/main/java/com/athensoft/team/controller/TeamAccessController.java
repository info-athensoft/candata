package com.athensoft.team.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/team")
public class TeamAccessController {
	
	@RequestMapping("/")
	public String gotoIndex(Model model){
		model.addAttribute("lang","zh_CN");
		return "team/signin";
	}
	
	@RequestMapping("/signin.html")
	public String gotoSignIn(Model model){
		model.addAttribute("lang","zh_CN");
		return "team/signin";
	}
	
	@RequestMapping("/signin")
	public String doSignIn(
				HttpServletRequest request, 
				TeamUser teamUser){
		HttpSession session = request.getSession(true);
		
		boolean isValid = false;
		isValid = auth(teamUser);
		
		session.setAttribute("user", teamUser);
		
		System.out.println(">>>>>>>>>>>>>>>>>>>>>="+teamUser.toString()+" ==== "+isValid);
		
		String viewName = "";
		if(isValid){
			viewName = "redirect:/team/internship.html?lang=zh_CN";
		}else{
			viewName = 	"redirect:/team/signin.html?lang=zh_CN";
		}
		return viewName;
	}
	
	@RequestMapping("/signout")
	public String doSignOut(
				HttpServletRequest request){
		HttpSession session = request.getSession(false);
		session.removeAttribute("user");
		
		String viewName = "";
		viewName = 	"redirect:/team/signin.html?lang=zh_CN";
		return viewName;
	}
	
	
	
	private boolean auth(TeamUser user){
		boolean isPassed = false;
		
		for(TeamUser tu: TeamUser.teamUsers)
		{
			if(tu.equalsTo(user)){
				isPassed = true;
				break;
			}
		}
		return isPassed;
	}
	
}

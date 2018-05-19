package com.athensoft.site.biz.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/edu")
public class EduController {
	
	@RequestMapping("/robotics.html")
	public String gotoRoboticsLego(){
		return "edu/robotics_kid";
	}
	
	@RequestMapping("/robotics/tutorial/1.html")
	public String gotoRoboticsTutorial1(){
		return "edu/robotics_tutorial_1";
	}
	
	@RequestMapping("/robotics/tutorial/2.html")
	public String gotoRoboticsTutorial2(){
		return "edu/robotics_tutorial_2";
	}
}

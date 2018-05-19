package com.athensoft.event.cv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cv")
public class ResumeController {
	
	@RequestMapping("/{cvName}")
	public String showResume(@PathVariable String cvName){
		return "cv/resume-"+cvName;
	}
}

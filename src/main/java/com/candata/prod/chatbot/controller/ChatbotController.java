package com.candata.prod.chatbot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/prod/chatbot")
public class ChatbotController {
	
	@RequestMapping("/")
	public String goIndex(){
		return "prod/chatbot-index";
	}
	
	@RequestMapping("/index.html")
	public String goIndex2(){
		return "prod/chatbot-index";
	}
}

package com.otphalgo.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/userlogin")
	public String loginForm(){
		log.info("----- �α���! -----");
		return "login/loginform";
	}
	
	@RequestMapping("/userlogout")
	public String logoutComp(HttpSession session){
		log.info("----- �α׾ƿ�! -----");
		session.removeAttribute("user");
		return "redirect:"+(String)session.getAttribute("backpage");
	}
	
	@RequestMapping("/join")
	public String joinSelectForm(){
		return "join/joinselect";
	}
	
	@RequestMapping("/find")
	public String memberFindForm(){
		log.info("----- id/pw ã�� -----");
		return "login/memberfindform";
	}

}

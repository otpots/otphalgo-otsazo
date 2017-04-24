package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.SellerService;

@Controller
public class LoginController {
	
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	SellerService sellerservice;
	
	@RequestMapping(value="userlogin", method=RequestMethod.GET)
	public String loginForm(){
		log.info("====> loginForm");
		return "/login/loginform";
	}
	
	@RequestMapping(value="userlogin", method=RequestMethod.POST)
	public String loginComp(){
		log.info("====> loginForm");
		return "/login/loginform";
	}
	
	@RequestMapping("join")
	public String joinSelectForm(){
		log.info("====> joinSelectForm");
		return "/join/joinselect";
	}
	
	@RequestMapping("find")
	public String memberFindForm(){
		log.info("====> memberFindForm");
		return "/login/memberfindform";
	}

}

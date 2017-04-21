package com.otphalgo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.SellerService;

@Controller
public class LoginController {
	
	@Autowired
	SellerService sellerservice;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginForm(){
		// 판매자 회원 가입 폼으로 이동 
		return "/login/loginform";
	}

}

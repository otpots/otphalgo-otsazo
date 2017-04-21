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
		// �Ǹ��� ȸ�� ���� ������ �̵� 
		return "/login/loginform";
	}

}

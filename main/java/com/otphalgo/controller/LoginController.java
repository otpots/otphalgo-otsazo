package com.otphalgo.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.otphalgo.service.BuyerService;
import com.otphalgo.service.SellerService;

@Controller
public class LoginController {
	
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	SellerService sellerservice;
	@Autowired
	BuyerService buyerservice;
	
	@RequestMapping("/userlogin")
	public String loginForm(HttpServletRequest request){
		log.info("loginForm ------------------------ 로그인폼으로");
		return "login/loginform";
	}
	
	@RequestMapping("/userlogout")
	public String logoutComp(HttpSession session){
		log.info("logoutComp ------------------------ 로그아웃");
		session.removeAttribute("user");
		return "redirect:"+(String)session.getAttribute("backpage");
	}
	
	@RequestMapping("/join")
	public String joinSelectForm(){
		log.info("joinSelectForm ------------------------ 회원가입 구매/판매 선택 폼으로");
		return "join/joinselect";
	}
	
	@RequestMapping("/find")
	public String memberFindForm(){
		log.info("memberFindForm ------------------------ id/pw 찾기 폼으로");
		return "login/memberfindform";
	}

}

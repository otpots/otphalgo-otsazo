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
		log.info("loginForm ------------------------ �α���������");
		return "login/loginform";
	}
	
	@RequestMapping("/userlogout")
	public String logoutComp(HttpSession session){
		log.info("logoutComp ------------------------ �α׾ƿ�");
		session.removeAttribute("user");
		return "redirect:"+(String)session.getAttribute("backpage");
	}
	
	@RequestMapping("/join")
	public String joinSelectForm(){
		log.info("joinSelectForm ------------------------ ȸ������ ����/�Ǹ� ���� ������");
		return "join/joinselect";
	}
	
	@RequestMapping("/find")
	public String memberFindForm(){
		log.info("memberFindForm ------------------------ id/pw ã�� ������");
		return "login/memberfindform";
	}

}

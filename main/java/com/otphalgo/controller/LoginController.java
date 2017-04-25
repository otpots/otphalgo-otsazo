package com.otphalgo.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.otphalgo.service.BuyerService;
import com.otphalgo.service.SellerService;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

@Controller
@SessionAttributes("user")
public class LoginController {
	
	private static final Logger log = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	SellerService sellerservice;
	@Autowired
	BuyerService buyerservice;
	
	@RequestMapping("userlogin")
	public String loginForm(HttpServletRequest request){
		log.info("loginForm : ");
		return "/login/loginform";
	}
	
	@RequestMapping("userlogout")
	public String logoutComp(SessionStatus st, HttpSession session){
		log.info("logoutComp : ");
		st.setComplete();
		return "redirect:"+(String)session.getAttribute("backpage");
	}
	
	@RequestMapping("join")
	public String joinSelectForm(){
		log.info("joinSelectForm : ");
		return "/join/joinselect";
	}
	
	@RequestMapping("find")
	public String memberFindForm(){
		log.info("memberFindForm : ");
		return "/login/memberfindform";
	}

}

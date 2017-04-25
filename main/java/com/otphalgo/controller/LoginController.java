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
	
	@RequestMapping(value="userlogin", method=RequestMethod.GET)
	public String loginForm(HttpServletRequest request){
		log.info("loginForm : ");
		return "/login/loginform";
	}
	
	@RequestMapping(value="userlogin", method=RequestMethod.POST)
	public String loginComp(MemberVO mvo, Model model, HttpSession session){
		log.info("loginComp : ");
		MemberVO svo = sellerservice.loginSeller(mvo);
		MemberVO bvo = buyerservice.loginBuyer(mvo);
		String jsp = "redirect:/userlogin";
		if(svo != null){
			if(mvo.getPw().equals(svo.getPw())){
				//로그인성공
				model.addAttribute("user", svo);
				jsp = "redirect:"+(String)session.getAttribute("backpage");
			}
		} else if(bvo != null){
			if(mvo.getPw().equals(bvo.getPw())){
				//로그인성공
				model.addAttribute("user", bvo);
				jsp = "redirect:"+(String)session.getAttribute("backpage");
			}
		} 
		return jsp;
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

package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.otphalgo.service.BuyerService;
import com.otphalgo.service.SellerService;
import com.otphalgo.vo.MemberVO;

@RestController
@SessionAttributes("user")
public class LoginJSONController {

	private static final Logger log = LoggerFactory.getLogger(LoginJSONController.class);

	@Autowired
	BuyerService buyerservice;
	@Autowired
	SellerService sellerservice;
	
	@ResponseBody
	@RequestMapping(value="join/logincheck", method=RequestMethod.POST)
	public boolean loginCheck(MemberVO mvo, Model model){
		log.info(mvo.toString());
		MemberVO svo = sellerservice.loginSeller(mvo);
		MemberVO bvo = buyerservice.loginBuyer(mvo);
		boolean result = false;
		if(svo != null){
			if(mvo.getPw().equals(svo.getPw())){
				//로그인성공
				model.addAttribute("user", svo);
				result = true;
			}
		} else if(bvo != null){
			if(mvo.getPw().equals(bvo.getPw())){
				//로그인성공
				model.addAttribute("user", bvo);
				result = true;
			}
		} 
		return result;
	}
	
}

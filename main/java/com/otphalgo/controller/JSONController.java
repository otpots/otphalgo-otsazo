package com.otphalgo.controller;

import javax.servlet.http.HttpSession;

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
public class JSONController {
	
	private static final Logger log = LoggerFactory.getLogger(JSONController.class);
	
	@Autowired
	SellerService sellerservice;
	@Autowired
	BuyerService buyerservice;
	
	@ResponseBody
	@RequestMapping(value="/join/check", method=RequestMethod.POST)
	public boolean sellerCheck(MemberVO mvo){
		boolean result = false;
		MemberVO resultvo = sellerservice.selectSellerCheck(mvo);
		if(resultvo == null){
			result = true;
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.POST)
	public boolean loginCheck(MemberVO mvo, Model model, HttpSession session){
		MemberVO svo = sellerservice.loginSeller(mvo);
		MemberVO bvo = buyerservice.loginBuyer(mvo);
		boolean result = false;
		if(svo != null){
			if(mvo.getPw().equals(svo.getPw())){
				model.addAttribute("user", svo);
				log.info("판매자로 로그인 성공");
				result = true;
			}
		} else if(bvo != null){
			if(mvo.getPw().equals(bvo.getPw())){
				model.addAttribute("user", bvo);
				log.info("구매자로 로그인 성공");
				result = true;
			}
		} 
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/check", method=RequestMethod.POST)
	public boolean buyerCheck(MemberVO mvo){
		boolean result = false;
		MemberVO svo = sellerservice.selectSellerCheck(mvo);
		MemberVO bvo = buyerservice.selectBuyerCheck(mvo);
		if(svo != null){
			result = true;
		} else if(bvo != null){
			result = true;
		}
		return result;
	}

}

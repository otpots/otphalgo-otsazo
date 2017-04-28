package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.MemberService;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

@Controller
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService memberservice;
	
	@RequestMapping(value="/joinBuyer", method=RequestMethod.GET)
	public String buyerJoinForm(){
		log.info("----- 구매자 회원가입 -----");
		return "join/buyerjoinform";
	}
	
	@RequestMapping(value="/joinBuyer", method=RequestMethod.POST)
	public String memberJoinComp(MemberVO mvo){
		memberservice.insertBuyer(mvo);
		return "join/joinsuccess";
	}

	@RequestMapping(value="/joinSeller", method=RequestMethod.GET)
	public String sellerJoinForm(){
		log.info("----- 판매자 회원가입 -----");
		return "join/sellerjoinform";
	}
	
	@RequestMapping(value="/joinSeller", method=RequestMethod.POST)
	public String sellerJoinComp(MemberVO mvo, SellerVO svo){
		log.info(mvo.toString());
		log.info(svo.toString());
		memberservice.insertSeller(mvo, svo);
		return "join/joinsuccess";
	}
}

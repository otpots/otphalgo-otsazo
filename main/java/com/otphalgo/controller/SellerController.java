package com.otphalgo.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.SellerService;
import com.otphalgo.vo.SellerVO;

@Controller
public class SellerController {
	
	private static final Logger log = LoggerFactory.getLogger(SellerController.class);
	
	@Autowired
	SellerService sellerservice;
	
	@RequestMapping(value="seller/join", method=RequestMethod.GET)
	public String sellerJoinForm(){
		// 판매자 회원 가입 폼으로 이동 
		return "/seller/sellerjoinform";
	}
	
	@RequestMapping(value="seller/join", method=RequestMethod.POST)
	public String sellerJoinComp(SellerVO svo){
		// seller DB 데이터 추가 성공
		sellerservice.insertSeller(svo);
		return "/seller/sellerjoinsuccess";
	}


}

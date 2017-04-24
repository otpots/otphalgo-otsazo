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
		log.info("====> sellerJoinForm");
		return "/seller/sellerjoinform";
	}
	
	@RequestMapping(value="seller/join", method=RequestMethod.POST)
	public String sellerJoinComp(SellerVO svo){
		log.info("====> sellerJoinComp");
		sellerservice.insertSeller(svo);
		return "/seller/sellerjoinsuccess";
	}


}

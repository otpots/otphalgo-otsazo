package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.BuyerService;
import com.otphalgo.vo.BuyerVO;

@Controller
public class BuyerController {
	
	private static final Logger log = LoggerFactory.getLogger(BuyerController.class);
	
	@Autowired
	BuyerService buyerservice;
	
	@RequestMapping(value="buyer/join", method=RequestMethod.GET)
	public String buyerJoinForm(){
		log.info("====> buyerJoinForm");
		return "/buyer/buyerjoinform";
	}
	
	@RequestMapping(value="buyer/join", method=RequestMethod.POST)
	public String buyerJoinComp(BuyerVO bvo){
		log.info("====> buyerJoinComp");
		log.info("insert member :: "+bvo.toString());
		buyerservice.insertBuyer(bvo);
		return "/seller/joinsuccess";
	}

}

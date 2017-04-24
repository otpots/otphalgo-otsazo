package com.otphalgo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.otphalgo.service.BuyerService;
import com.otphalgo.vo.BuyerVO;

@RestController
public class BuyerJSONController {
	
	@Autowired
	BuyerService buyerservice;
	
	@ResponseBody
	@RequestMapping(value="buyer/check", method=RequestMethod.POST)
	public boolean buyerCheck(BuyerVO bvo){
		boolean result = false;
		BuyerVO resultvo = buyerservice.selectBuyerCheck(bvo);
		if(resultvo == null){
			result = true;
		}
		return result;
	}

}

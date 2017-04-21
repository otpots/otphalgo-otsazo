package com.otphalgo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.otphalgo.service.SellerService;
import com.otphalgo.vo.SellerVO;

@RestController
public class SellerJSONController {
	
	@Autowired
	SellerService sellerservice;
	
	@ResponseBody
	@RequestMapping(value="seller/check", method=RequestMethod.POST)
	public boolean idcheck(SellerVO svo){
		boolean result = false;
		SellerVO resultvo = sellerservice.selectSellerCheck(svo);
		if(resultvo == null){
			result = true;
		}
		return result;
	}
	
}

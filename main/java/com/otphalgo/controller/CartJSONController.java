package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.otphalgo.service.CartService;
import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;

@RestController
@SessionAttributes("user")
public class CartJSONController {

	private static final Logger log = LoggerFactory.getLogger(CartJSONController.class);
	
	@Autowired
	CartService service;
	
	@ResponseBody
	@RequestMapping("cart")
	public String addCart(MemberVO mvo, CartVO cvo){
		log.info(mvo.toString());
		log.info(cvo.toString());
		String result = "Added in you cart, 카트에 추가되었습니다.";
		return result;
	}
}

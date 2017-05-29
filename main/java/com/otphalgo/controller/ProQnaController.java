package com.otphalgo.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.ProQnaService;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProQnaVO;

@Controller
public class ProQnaController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	@Autowired
	ProQnaService proqnaservice;
	
	@RequestMapping(value="/writeproqna", method=RequestMethod.POST)
	public String insertProQna(ProQnaVO pqvo, HttpSession session){
		MemberVO mvo = (MemberVO) session.getAttribute("user");
		pqvo.setId(mvo.getId());
		proqnaservice.insertProQna(pqvo);
		return "pronboard/pronboarddetail";
	}
}

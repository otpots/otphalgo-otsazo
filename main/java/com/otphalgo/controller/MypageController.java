package com.otphalgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("/mypage")
	public String MypageMain(){
		
		return "mypage/mypagemain";
	}

}

package com.otphalgo.controller;

import javax.servlet.http.HttpSession;

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
public class MypageController {
	
	static final Logger log = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	MemberService memberservice;
	
	@RequestMapping("/mypage")
	public String MypageMain(){		
		return "mypage/mypagemain";
	}
	
	@RequestMapping(value="/mypageUsermodify", method=RequestMethod.GET)
	public String userModify(HttpSession session){
		log.info("----- 회원정보수정 -----");
		MemberVO mvo = (MemberVO)session.getAttribute("user");
		log.info("세션유저 : "+mvo.toString());
		String jsp = "/controller";
		if(mvo.getAutho().equals("s")){
			jsp = "mypage/sellermodify";
		} else if(mvo.getAutho().equals("b")){
			jsp = "mypage/buyermodify";
		}
		return jsp;
	}
	
	@RequestMapping(value="/mypageBuyermod", method=RequestMethod.POST)
	public String buyerModify(MemberVO mvo, HttpSession session){
		log.info("VO : "+mvo.toString());
		MemberVO vo = (MemberVO)session.getAttribute("user");
		mvo.setNum(vo.getNum());
		memberservice.updateBuyer(mvo);
		return "mypage/modifysuccess";
	}
	
	@RequestMapping(value="/mypageSellermod", method=RequestMethod.POST)
	public String sellerModify(MemberVO mvo, SellerVO svo, HttpSession session){
		log.info("VO 1 : "+mvo.toString());
		log.info("VO 2 : "+svo.toString());
		MemberVO vo = (MemberVO)session.getAttribute("user");
		mvo.setNum(vo.getNum());
		svo.setNum(vo.getNum());
		memberservice.updateSeller(mvo, svo);
		return "mypage/modifysuccess";
	}
	
	/*@RequestMapping(value="/pwcheck", method=RequestMethod.GET)
	public String passwordCheck(HttpSession session){
		return "";
	}
	*/
	
	
	

}

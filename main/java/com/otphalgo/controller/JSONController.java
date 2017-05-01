package com.otphalgo.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.otphalgo.service.MemberService;
import com.otphalgo.vo.MemberVO;

@RestController
@SessionAttributes("user")
public class JSONController {
	
	private static final Logger log = LoggerFactory.getLogger(JSONController.class);

	@Autowired
	MemberService memberservice;

	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.POST)
	public boolean loginCheck(MemberVO mvo, Model model, HttpSession session){
		boolean result = false;
		MemberVO resultvo = memberservice.selectOneMember(mvo);
		
		if(resultvo != null){
			if(mvo.getPw().equals(resultvo.getPw())){
				model.addAttribute("user", resultvo);
				log.info("로그인한 회원 : "+resultvo.toString());
				result = true;
			}
		}
		return result;
	}
	
	/*@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.POST)
	public boolean loginCheck(MemberVO mvo, Model model, HttpSession session){
		log.info("mvo : "+mvo.toString());
		boolean result = false;
		MemberVO resultvo = memberservice.selectOneMember(mvo);
		log.info("resultvo : "+resultvo.toString());
		if(resultvo != null){
			if(mvo.getPw().equals(resultvo.getPw())){
				model.addAttribute("user", resultvo);
				result = true;
			}
		}
		
		model.addAttribute("user", resultvo);
		
		if(session.getAttribute("user") != null){
			MemberVO vo = (MemberVO)session.getAttribute("user");
			log.info(vo.toString());
		} else{
			log.info("실패");
		}
		
		return result;
	}*/
	
	@ResponseBody
	@RequestMapping(value="/check", method=RequestMethod.POST)
	public boolean memberCheck(MemberVO mvo){
		boolean result = false;
		
		if(memberservice.selectOneMember(mvo) != null){
			result = true;
		}

		return result;
	}

}

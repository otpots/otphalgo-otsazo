package com.otphalgo.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.otphalgo.service.EmailService;
import com.otphalgo.vo.EmailVO;

@Controller
public class EmailController {
	
	@Autowired
	EmailService emailservice;
	
	static final Logger log = LoggerFactory.getLogger(EmailController.class);
	
	@RequestMapping(value="email/sendemail", method=RequestMethod.GET)
	public String sendEmailform(String id, String email, HttpSession session) throws Exception{
		
		log.info((String)session.getAttribute("ranNum"));
		
		if(session.getAttribute("ranNum") == null){
			EmailVO evo = new EmailVO();
			String ranNum = String.valueOf(new Random().nextInt(100000));
			evo.setContent("인증번호 : [ "+ranNum+" ]");
			evo.setReceiver(email);
			evo.setTitle(id+" 회원님! OtphalgoOtsazo 메일 인증을 완료해주세요!");
			session.setAttribute("ranNum", ranNum);
			
			log.info(evo.toString());
			
			emailservice.sendEmail(evo);
		} 
		
		return "email/emailform";
		
	}
	
	@RequestMapping(value="email/sendemail", method=RequestMethod.POST)
	public String sendEmailComp(String inrannum, HttpSession session){
		
		String ranNum = (String)session.getAttribute("ranNum");
		String jsp = "email/emailfail";
		
		if(inrannum.equals(ranNum) == true){
			jsp = "email/emailsuccess";
		}
		session.removeAttribute("ranNum");
		return jsp;
	}
	
	

}

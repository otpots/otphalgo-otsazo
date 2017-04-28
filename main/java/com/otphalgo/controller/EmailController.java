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
import com.otphalgo.service.MemberService;
import com.otphalgo.vo.EmailVO;
import com.otphalgo.vo.MemberVO;

@Controller
public class EmailController {
	
	@Autowired
	EmailService emailservice;
	@Autowired
	MemberService memberservice;
	
	static final Logger log = LoggerFactory.getLogger(EmailController.class);
	
	@RequestMapping(value="/sendemail", method=RequestMethod.GET)
	public String sendEmailform(String id, String email, HttpSession session) throws Exception{
		
		log.info("������ȣ : "+(String)session.getAttribute("ranNum"));
		
		if(session.getAttribute("ranNum") == null){
			EmailVO evo = new EmailVO();
			String ranNum = String.valueOf(new Random().nextInt(100000));
			evo.setContent("������ȣ : [ "+ranNum+" ]");
			evo.setReceiver(email);
			evo.setTitle(id+" ȸ����! OtphalgoOtsazo ���� ������ �Ϸ����ּ���!");
			session.setAttribute("ranNum", ranNum);
			
			log.info(evo.toString());
			
			emailservice.sendEmail(evo);
		} 
		
		return "email/emailform";
		
	}
	
	@RequestMapping(value="/sendemail", method=RequestMethod.POST)
	public String sendEmailComp(String inrannum, HttpSession session){
		
		String ranNum = (String)session.getAttribute("ranNum");
		String jsp = "email/emailfail";
		
		if(inrannum.equals(ranNum) == true){
			jsp = "email/emailsuccess";
		}
		session.removeAttribute("ranNum");
		return jsp;
	}
	
	@RequestMapping(value="/sendfind", method=RequestMethod.GET)
	public String sendFind(MemberVO mvo) throws Exception{
		
		MemberVO resultvo = memberservice.selectOneMember(mvo);
		
		log.info("id/pw ã�⿡ �Էµ� membervo : "+resultvo.toString());
		
		EmailVO evo = new EmailVO();
		evo.setReceiver(resultvo.getEmail());
		evo.setTitle("�����Ͻ� OtphalgoOtsazo �� ȸ�������� ã�ҽ��ϴ�!");
		evo.setContent("Ȯ�� ��� <br>���̵�� "+resultvo.getId()+" <br>��й�ȣ�� "+resultvo.getPw()+" �Դϴ�.");

		emailservice.sendEmail(evo);
		
		return "login/memberfindsuccess";
		
	}
	
	

}

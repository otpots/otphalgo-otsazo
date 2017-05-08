package com.otphalgo.serviceImpl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.otphalgo.service.EmailService;
import com.otphalgo.vo.EmailVO;

@Service("emailservice")
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	JavaMailSender mailSender;
	
	static final Logger log = LoggerFactory.getLogger(EmailServiceImpl.class);

	@Override
	public void sendEmail(EmailVO evo) throws Exception {
		
		MimeMessage msg = mailSender.createMimeMessage();
		MimeMessageHelper msgHelper = new MimeMessageHelper(msg, true, "UTF-8");
		
		log.info("EmailVO : "+evo.toString());
		
		try{
			msgHelper.setSubject(evo.getTitle());
			msgHelper.setText(evo.getContent());
			msgHelper.setTo(evo.getReceiver());
			msgHelper.setFrom("otphalgootsazo@gmail.com");
		} catch(MessagingException e){
			log.info("===> MessagingException : 메세지 입력하는 동안 에러 발생");
			e.printStackTrace();
		}
		try{
			mailSender.send(msg);
			log.info("메일전송 완료");
		} catch(MailException e){
			log.info("===> MailException : 메일 보내는 동안 에러 발생");
			e.printStackTrace();
			
		}

	}

}

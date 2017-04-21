package com.otphalgo.service;

import com.otphalgo.vo.EmailVO;

public interface EmailService {
	
	void sendEmail(EmailVO evo) throws Exception;

}

package com.otphalgo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger log = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		log.info("preHandle ------------------------ ");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user") == null){
			
			log.info("인터셉터 : 로그인 된 유저가 없음 -> 로그인창으로 돌아감 ");
			
			response.sendRedirect("userlogin");
			return false;
		}
		
		return true;
	}

}

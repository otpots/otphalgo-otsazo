package com.otphalgo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class JoinInterceptor extends HandlerInterceptorAdapter {

	private static final Logger log = LoggerFactory.getLogger(JoinInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// servlet-context.xml <interceptor> 확인
		
		log.info("preHandle ------------------------ ");

		HttpSession session = request.getSession();
		
		if(session.getAttribute("user") != null){
			
			log.info("인터셉터 : 로그인 된 유저가 있음 -> 회원가입창 접근 실패, 메인으로 돌아가기");
			
			response.sendRedirect("/controller");
			return false;
		}
		
		return true;
	}

}

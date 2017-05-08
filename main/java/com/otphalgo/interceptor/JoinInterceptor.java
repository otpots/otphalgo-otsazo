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

		HttpSession session = request.getSession();
			
		log.info("조인인터셉터 ");
		
		if(session.getAttribute("user") != null){
			
			log.info("인터셉터 : 메인으로 가기 (로그인함)");
			
			response.sendRedirect("/");
			return false;
		}
		
		return true;
	}

}

package com.itbank.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Object handler : " + handler);
		
		HttpSession session = request.getSession(false); 	// 현재 사용중인 세션이 없으면 새로 생성하지 마라
		if(session != null && session.getAttribute("login") != null) {
			System.out.println("preHandle : true");
			return true;
		}
		String requestURI = request.getRequestURI();
		System.out.println("requestURI : " + requestURI);
		requestURI = requestURI.substring(request.getContextPath().length());
		
		System.out.println("preHandle : false");
		System.out.println("contextPath : " + request.getContextPath());
		System.out.println("requestURI : " + requestURI);
		
		response.sendRedirect(request.getContextPath() + "/member/login");
		
		return false;
	}

	
}

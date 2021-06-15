package com.vuong.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.vuong.entity.*;
import com.vuong.service.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService session;

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		if (req.getSession().getAttribute("username") == null) {
			req.getSession().setAttribute("secureUri", req.getRequestURI());
			resp.sendRedirect("/account/login");
			return false;
		}
		return true;
	}
}

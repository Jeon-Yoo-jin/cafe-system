package com.caffeesys.cafesystem.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.caffeesys.cafesystem.login.service.Login;
import com.caffeesys.cafesystem.login.service.LoginDao;
import com.caffeesys.cafesystem.login.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("LoginController.java / login 폼 요청");
		return "/login/loginForm";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Login login, HttpSession session) {
		System.out.println("LoginController.java / login 액션 요청");
		System.out.println(login);
		
		return "";
	}
}

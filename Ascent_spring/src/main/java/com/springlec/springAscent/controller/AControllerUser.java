package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerUser {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ACommand loginCommand = null;
	
	@Autowired
	public void auto(ACommand logIn) {
		this.loginCommand = logIn;
	}
	
//	@RequestMapping("/main")
//	public String main() {
//		return "mainV";
//	}
	@RequestMapping("/logInV")
	public String loginV() {
		return "logInV";
	}
	@RequestMapping("/logIn")
	public String login(HttpServletRequest request) {
		loginCommand.execute1(sqlSession, request);
		return (String)request.getAttribute("return");
	}
	
}

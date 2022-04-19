package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/logInV")
	public String loginV() {
		return "logInV";
	}
	@RequestMapping("/logIn")
	public String login(HttpServletRequest request, Model model) {
		loginCommand.execute(request, sqlSession, model);
		return (String)request.getAttribute("return");
	}
	
}

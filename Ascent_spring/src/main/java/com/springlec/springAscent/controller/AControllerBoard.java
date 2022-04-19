package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;
import com.springlec.springAscent.command.CounselWriteCommand;

@Controller
public class AControllerBoard {
	
	@Autowired
	private SqlSession sqlSession;
	
	ACommand command = null;
	ACommand counselListCommand = null; 
	ACommand counselWriteCommand = null; 
	
	
	
	@Autowired
	private void auto(ACommand list, ACommand write) {
		this.counselListCommand = list;
		this.counselWriteCommand = write;
	}

	
	// 1대1 문의 목록 출력
	@RequestMapping("/counselList")
	public String counselList(HttpServletRequest request, Model model) {
		counselListCommand.execute1(request, sqlSession, model);
		return "counselListV";
	}
	
	// 1대1 문의 입력
	@RequestMapping("/counselWrite")
	public String counselWrite(HttpServletRequest request, SqlSession session) {
		counselWriteCommand.execute2(request, session);
		return "counselWriteV";
	}
	
	
	
}

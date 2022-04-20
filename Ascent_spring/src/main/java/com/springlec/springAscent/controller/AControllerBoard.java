package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;
import com.springlec.springAscent.command.CounselContentCommand;
import com.springlec.springAscent.command.CounselWriteCommand;
import com.springlec.springAscent.command.NoticeContentCommand;

@Controller
public class AControllerBoard {
	
	@Autowired
	private SqlSession sqlSession;
	
	ACommand command = null;
	ACommand counselListCommand = null; 
	ACommand counselWriteCommand = null; 
	ACommand counselContentCommand = null; 
	ACommand counselDeleteCommand = null; 
	
	ACommand noticeListCommand = null;
	ACommand noticeContentCommand = null;
	
	
	@Autowired
	private void auto(ACommand clist, ACommand cwrite, ACommand ccontent, ACommand cdelete, ACommand nlist, ACommand ncontent) {
		this.counselListCommand = clist;
		this.counselWriteCommand = cwrite;
		this.counselContentCommand = ccontent;
		this.counselDeleteCommand = cdelete;
		
		this.noticeListCommand = nlist;
		this.noticeContentCommand = ncontent;
	}

	
	// 1대1 문의 목록 출력
	@RequestMapping("/counselList")
	public String counselList(HttpServletRequest request, Model model) {
		counselListCommand.execute3(sqlSession, request, model);
		return "counselListV";
	}
	
	// 1대1 문의 입력창 
	
	@RequestMapping("/counselWriteV")
	public String counselWriteV(){
		return "counselWriteV";
	}
		
	// 1대1 문의 입력
	@RequestMapping("/counselWrite")
	public String counselWrite(HttpServletRequest request, SqlSession session) {
		counselWriteCommand.execute1(session, request);
		return "redirect:counselList";
	}
	
	// 1대1 문의 상세
	@RequestMapping("/counselContent")
	public String counselContent(HttpServletRequest request, SqlSession session, Model model) {
		counselContentCommand.execute3(session, request, model);
		return "counselContentV";
	}
	
	// 1대1 문의 삭제
	@RequestMapping("/counselDelete")
	public String counselDelete(HttpServletRequest request, SqlSession session) {
		counselDeleteCommand.execute1(session, request);
		return "redirect:counselList";
		
	}
	
	// 공지사항 목록
	@RequestMapping("/noticelist")
	public String noticeList(HttpServletRequest request, Model model) {
		noticeListCommand.execute3(sqlSession, request, model);
		return "noticeListV";
	}
	
	// 공지사항 상세	
	@RequestMapping("/noticeContent")
	public String noticeContent(HttpServletRequest request, SqlSession session, Model model) {
		noticeContentCommand.execute3(session, request, model);
		return "noticeContentV";
	}
	
}

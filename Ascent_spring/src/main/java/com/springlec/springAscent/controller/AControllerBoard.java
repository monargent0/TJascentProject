package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerBoard {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ACommand counselListCommand = null; 
	private ACommand counselWriteCommand = null; 
	private ACommand counselContentCommand = null; 
	private ACommand counselDeleteCommand = null; 
	
	private ACommand noticeListCommand = null;
	private ACommand noticeContentCommand = null;
	
	
	@Autowired
	private void auto(ACommand counselList, ACommand counselWrite, ACommand counselContent, ACommand counselDelete, ACommand noticeList, ACommand noticeContent) {
		this.counselListCommand = counselList;
		this.counselWriteCommand = counselWrite;
		this.counselContentCommand = counselContent;
		this.counselDeleteCommand = counselDelete;
		
		this.noticeListCommand = noticeList;
		this.noticeContentCommand = noticeContent;
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
	@RequestMapping("/noticeBoardlist")
	public String noticeBoardList(HttpServletRequest request, Model model) {
		noticeListCommand.execute3(sqlSession, request, model);
		return "noticeBoardListV";
	}
	
	// 공지사항 상세	
	@RequestMapping("/noticeBoardContent")
	public String noticeBoardContent(HttpServletRequest request, SqlSession session, Model model) {
		noticeContentCommand.execute3(session, request, model);
		return "noticeBoardContentV";
	}
	
}

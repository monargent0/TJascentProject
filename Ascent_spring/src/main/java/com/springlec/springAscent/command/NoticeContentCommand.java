package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.NDaoNotice;

public class NoticeContentCommand implements ACommand {

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

		int noticeCode = Integer.parseInt( request.getParameter("noticeCode")); 
		
		NDaoNotice dao = sqlSession.getMapper(NDaoNotice.class);
		
		model.addAttribute("noticeBoardContentV", dao.content(noticeCode));
		request.setAttribute("result", "noticeBoardContentV");
	}

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}

	

}

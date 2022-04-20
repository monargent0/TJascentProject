package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.NDaoNotice;

public class NoticeContentCommand implements ACommand {

	@Override
	public void execute3(HttpServletRequest request, SqlSession sqlSession, Model model) {

		String noticeCode = request.getParameter("noticeCode");
		
		NDaoNotice dao = sqlSession.getMapper(NDaoNotice.class);
		
		model.addAttribute("noticeContentV", dao.content(noticeCode));
		
	}

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}


}

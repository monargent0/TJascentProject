package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CDaoCounsel;

public class CounselContentCommand implements ACommand {

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

		String counselCode = request.getParameter("counselCode");
		
		CDaoCounsel dao = sqlSession.getMapper(CDaoCounsel.class);
		
		model.addAttribute("counselDetail", dao.content(counselCode));
		
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
package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CDaoCounsel;

public class CounselWriteCommand implements ACommand {

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(HttpServletRequest request, SqlSession sqlSession) {
		CDaoCounsel dao = sqlSession.getMapper(CDaoCounsel.class);
		dao.write(request.getParameter("counselType"), request.getParameter("counselTitle"), request.getParameter("counselContent"), request.getParameter("userID"));
	}

}

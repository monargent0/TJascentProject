package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.RDaoReview;

public class ReviewWriteCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		
		RDaoReview dao = sqlSession.getMapper(RDaoReview.class);
		dao.write(request.getParameter("reviewTitle"), request.getParameter("reviewContent"), request.getParameter("reviewImage"), request.getParameter("userID"));
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		
	
		
	}

}

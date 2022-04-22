package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.RDaoReview;

public class ReviewContentCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {


		int reviewCode = Integer.parseInt(request.getParameter("reviewCode"));
					
		RDaoReview dao = sqlSession.getMapper(RDaoReview.class);
		
		model.addAttribute("reviewContentV", dao.content(reviewCode));
		request.setAttribute("result", "reviewContentV");
	}

}

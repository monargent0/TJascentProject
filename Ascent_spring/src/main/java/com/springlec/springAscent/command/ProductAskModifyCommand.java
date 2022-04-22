package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.AskDaoP;


public class ProductAskModifyCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {

		int askCode = Integer.parseInt(request.getParameter("askCode"));
		String askTitle = request.getParameter("askTitle");
		String askContent = request.getParameter("askContent");
		
		AskDaoP dao = sqlSession.getMapper(AskDaoP.class);
		dao.modify(askTitle, askContent, askCode);
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub

	}

}

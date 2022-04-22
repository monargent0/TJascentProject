package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.AskDaoP;
import com.springlec.springAscent.dao.CounselDao;

public class ProductAskListCommand implements ACommand {

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

		String userID = request.getParameter("userID");
		
		AskDaoP dao = sqlSession.getMapper(AskDaoP.class);
		model.addAttribute("list", dao.list(userID));
		
	}

}

package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;

public class FindIDCommand implements ACommand {

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
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		UDao dao = sqlSession.getMapper(UDao.class);
		String userID = dao.findID(userName, userEmail);
		
		model.addAttribute("userID", userID);
	}

}

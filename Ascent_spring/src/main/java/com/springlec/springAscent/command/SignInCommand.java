package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;

public class SignInCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String userID = request.getParameter("userID");
		String userEmail = request.getParameter("userEmail");
		String userPhone = request.getParameter("userPhone");
		String userPW = request.getParameter("userPW");
		String userBirth = request.getParameter("userBirth");
		String userGender = request.getParameter("userGender");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		dao.signin(userName, userID, userEmail, userPhone, userPW, userBirth, userGender);
		
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

package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;
import com.springlec.springAscent.dto.UDtoLogin;

public class SignOutCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userID");
		String userPW = request.getParameter("userPW");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		UDtoLogin dto = dao.logIn(userId, userPW);
		
		if(dto == null) {
			session.setAttribute("alertTxt", "비밀번호를 확인해주세요." );
			request.setAttribute("return", "redirect:signOutV");	
		}else {
			dao.signout(userId, userPW);
			request.setAttribute("return", "signOutH");
		}

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

package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;

public class ProfileCommand implements ACommand {

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
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userID");
		UDao dao = sqlSession.getMapper(UDao.class);
		model.addAttribute("userinfo", dao.userinfo(userId));

	}

}

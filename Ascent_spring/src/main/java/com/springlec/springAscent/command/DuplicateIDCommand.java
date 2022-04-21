package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;

public class DuplicateIDCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userID = request.getParameter("userID");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		
		if (dao.doubleID(userID) == null) {
			session.setAttribute("idtxt", "Nodouble");
		}else if(dao.doubleID(userID) != null) {
			session.setAttribute("idtxt", "Double");
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

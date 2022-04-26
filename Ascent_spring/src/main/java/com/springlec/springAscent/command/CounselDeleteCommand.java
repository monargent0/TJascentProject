package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CounselDao;

public class CounselDeleteCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		
		CounselDao dao = sqlSession.getMapper(CounselDao.class);
		dao.delete(Integer.parseInt(request.getParameter("counselCode")));

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

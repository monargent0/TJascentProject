package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDao;

public class ProductSearchCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession,HttpServletRequest request) {
		// TODO Auto-generated method stub

	}
	
	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		PDao dao = sqlSession.getMapper(PDao.class);
		model.addAttribute("searchList",dao.searchList());
	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub

	}


}

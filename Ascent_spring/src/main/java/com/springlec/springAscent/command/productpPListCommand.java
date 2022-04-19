package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDao;

public class productpPListCommand implements ACommand {

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession) {
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		PDao dao = sqlSession.getMapper(PDao.class);
		model.addAttribute("pPList",dao.pPList());
	}

	@Override
	public void execute3(HttpServletRequest request, SqlSession sqlSession, Model model) {

	}

}

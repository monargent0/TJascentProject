package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CounselDao;

public class CounselContentCommand implements ACommand {

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

		int counselCode = Integer.parseInt(request.getParameter("counselCode"));
					
		CounselDao dao = sqlSession.getMapper(CounselDao.class);
		
		model.addAttribute("counselContentV", dao.content(counselCode));
		request.setAttribute("result", "counselContentV");
	}

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}


}

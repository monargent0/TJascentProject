package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CDaoCounsel;

public class CounselListCommand implements ACommand {

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		String userID = request.getParameter("userID");
		
		CDaoCounsel dao = sqlSession.getMapper(CDaoCounsel.class);
		model.addAttribute("list", dao.list(userID));
		
	}
	
	@Override
	public void execute2(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		
	}


}

package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.NDaoNotice;

public class NoticeListCommand implements ACommand {

	@Override
	public void execute3(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		NDaoNotice dao = sqlSession.getMapper(NDaoNotice.class);
		model.addAttribute("list", dao.list());
		
	}

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}

}

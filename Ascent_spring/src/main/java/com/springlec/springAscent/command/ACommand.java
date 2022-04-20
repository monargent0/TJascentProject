package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface ACommand {

	void execute1(HttpServletRequest request, SqlSession sqlSession);
	void execute2(SqlSession sqlSession, Model model);
	void execute3(HttpServletRequest request, SqlSession sqlSession, Model model);
}

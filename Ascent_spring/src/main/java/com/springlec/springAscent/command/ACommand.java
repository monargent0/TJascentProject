package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface ACommand {
	void execute1(HttpServletRequest request, SqlSession sqlSession , Model model);
	void execute2(HttpServletRequest request, SqlSession sqlSession);
}

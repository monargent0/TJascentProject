package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface ACommand {
	void execute(HttpServletRequest request, SqlSession sqlSession , Model model);
}

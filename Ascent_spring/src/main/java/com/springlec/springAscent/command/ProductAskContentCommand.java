package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.ADaoPAsk;
import com.springlec.springAscent.dao.CDaoCounsel;

public class ProductAskContentCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

		int askCode = Integer.parseInt(request.getParameter("askCode"));
		
		ADaoPAsk dao = sqlSession.getMapper(ADaoPAsk.class);
		
		model.addAttribute("productAskContentV", dao.content(askCode));
		request.setAttribute("result", "productAskContentV");
	}

}

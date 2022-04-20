package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartListCommand implements ACommand{

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		
	}
	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		
	}
	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		String userID = request.getParameter("userID");
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		model.addAttribute("cartList", dao.cartList(userID));
		
	}
}

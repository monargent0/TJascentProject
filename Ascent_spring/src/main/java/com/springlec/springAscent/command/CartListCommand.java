package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartListCommand implements ACommand{

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
		String userID = request.getParameter("userID");
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		model.addAttribute("cartList", dao.cartList(userID));
	}
	@Override
	public void execute2(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub
		
	}
}

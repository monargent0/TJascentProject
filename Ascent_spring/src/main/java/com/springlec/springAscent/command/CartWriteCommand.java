package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartWriteCommand implements ACommand {


	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		int cartAmount = Integer.parseInt(request.getParameter("cartAmount"));
		String productCode = request.getParameter("productCode");
		String userID = request.getParameter("userID");
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		dao.cartWrite(cartAmount, productCode, userID);
	}
	
	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		
	}
}

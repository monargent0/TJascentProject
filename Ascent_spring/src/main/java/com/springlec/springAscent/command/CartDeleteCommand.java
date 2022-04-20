package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartDeleteCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub

		String[] cartCode = request.getParameterValues("checkCart");
		int[] cartCodeArray = new int[cartCode.length];
		
		for(int i=0; i<cartCode.length; i++) {
			cartCodeArray[i] =Integer.parseInt(cartCode[i]);
		}
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		dao.cartDelete(cartCodeArray);
		
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

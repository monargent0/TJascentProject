package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartModifyCommand implements ACommand {

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub

		String[] cartAmount = request.getParameterValues("cartAmount");
		String[] cartCode = request.getParameterValues("cartCode");
		int[] cartAmountArray = new int[cartAmount.length]; 
		int[] cartCodeArray = new int[cartCode.length];
		
		for(int i=0; i<cartCode.length; i++) {
			cartAmountArray[i] = Integer.parseInt(cartAmount[i]);
			cartCodeArray[i] = Integer.parseInt(cartCode[i]);
		}
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		dao.cartModify(cartAmountArray, cartCodeArray);
	}

}

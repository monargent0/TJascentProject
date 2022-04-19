package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartListCommand implements ACommand{

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
		String userID = request.getParameter("userID");
		int[] checkCart = null;
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		model.addAttribute("cartList", dao.cartList(userID, checkCart));
	}
}

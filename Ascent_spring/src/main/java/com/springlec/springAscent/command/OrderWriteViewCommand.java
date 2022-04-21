package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.OrderDao;

public class OrderWriteViewCommand implements ACommand {

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
		// TODO Auto-generated method stub

		String userID = request.getParameter("userID");
		String[] checkCart = request.getParameterValues("checkCart");
		int[] checkCartArray = new int[checkCart.length];
		// 무조건 1개 이상의 값들만 넘어와서 조건문 필요없음.
		OrderDao dao = sqlSession.getMapper(OrderDao.class);
		for(int i=0; i<checkCart.length; i++) {
			checkCartArray[i] =Integer.parseInt(checkCart[i]);
			model.addAttribute("orderWriteView", dao.orderWriteView(userID, checkCartArray[i]));
		}
	}

}

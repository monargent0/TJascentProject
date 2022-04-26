package com.springlec.springAscent.command;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;
import com.springlec.springAscent.dao.OrderDao;

public class OrderWriteCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		LocalDateTime now = LocalDateTime.now();
		String orderNumber = now.format(DateTimeFormatter.ofPattern("yyyyMMddHHmm"));
		
		OrderDao daoO = sqlSession.getMapper(OrderDao.class);
		CartDao daoC= sqlSession.getMapper(CartDao.class);
		
		int orderSum = Integer.parseInt(request.getParameter("orderSum"));
		int orderAmount = Integer.parseInt(request.getParameter("orderAmount"));
		String orderReceiver = request.getParameter("orderReceiver");
		String orderPostcode = request.getParameter("orderPostcode");
		String orderMainAddress = request.getParameter("orderMainAddress");
		String orderDetailAddress = request.getParameter("orderDetailAddress");
		String orderExtraAddress = request.getParameter("orderExtraAddress");
		
		String userID = request.getParameter("userID");
		String[] cartCode = request.getParameterValues("cartCode");
		int[] cartCodeArray = new int[cartCode.length];
		for(int i=0; i<cartCode.length; i++) {
			cartCodeArray[i] = Integer.parseInt(cartCode[i]);
			// orderWrite
			daoO.orderWrite(userID, cartCodeArray[i], orderSum, orderAmount, 
				orderReceiver, orderPostcode, orderMainAddress, orderDetailAddress, orderExtraAddress, orderNumber);
			// 주문한 cart Delete하기
			daoC.cartDelete(cartCodeArray[i]);
		}
					
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

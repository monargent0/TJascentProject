package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoOPCart;

public class AOrderDetailCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	// TODO Auto-generated method stub
	
		int orderNumber = Integer.parseInt(request.getParameter("orderNumber"));
		int cartCode = Integer.parseInt(request.getParameter("cartCode"));
		String userID = request.getParameter("userID");
		
		ADaoOPCart dao = new ADaoOPCart();
		dao.orderDetail(orderNumber);
	}

}

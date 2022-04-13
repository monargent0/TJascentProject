package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoOPCart;
import com.javalec.ascent.dto.ADtoOPCart;

public class AOrderDetailCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	// TODO Auto-generated method stub
		
		String orderNumber = request.getParameter("orderNumber");
		String userID = request.getParameter("userID");
		
		ADaoOPCart dao = new ADaoOPCart();
		ArrayList<ADtoOPCart> dtos = dao.detail(orderNumber, userID);
		request.setAttribute("orderDetail", dtos);

	}

}

package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCart;


public class ACartWriteCommand implements ACommand {

	public void execute (HttpServletRequest request, HttpServletResponse response) {
		int cartAmount = Integer.parseInt(request.getParameter("cartAmount"));
		String productCode = request.getParameter("productCode");
		String userID = request.getParameter("userID");
		
		ADaoCart dao = new ADaoCart();
		dao.write(cartAmount, productCode, userID);
	}
}

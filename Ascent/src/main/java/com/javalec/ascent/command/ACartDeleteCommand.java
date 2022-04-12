package com.javalec.ascent.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCart;

public class ACartDeleteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String[] cartCode = request.getParameterValues("cartCode");
		// cartCode string array로 받아서 int array로 바꿔주기
		int[] cartCodeArray = new int[cartCode.length];
		for(int i=0; i<cartCode.length; i++) {
			cartCodeArray[i] =Integer.parseInt(cartCode[i]);
		}
		
		ADaoCart dao = new ADaoCart();
		dao.delete(cartCodeArray);
	}
}

package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCart;

public class ACartModifyCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String[] cartAmount = request.getParameterValues("cartAmount");
		String[] cartCode = request.getParameterValues("cartCode");
		int[] cartAmountArray = new int[cartAmount.length]; 
		int[] cartCodeArray = new int[cartCode.length];
		
		for(int i=0; i<cartCode.length; i++) {
			cartAmountArray[i] = Integer.parseInt(cartAmount[i]);
			cartCodeArray[i] = Integer.parseInt(cartCode[i]);
		}
		
		ADaoCart dao = new ADaoCart();
		dao.modify(cartAmountArray, cartCodeArray);
	}
}

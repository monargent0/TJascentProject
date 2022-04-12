package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoPCart;
import com.javalec.ascent.dto.ADtoPCart;


public class ACartListCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userID = request.getParameter("userID");
		String[] checkArray = request.getParameterValues("checkCart");
		int[] checkCart = null;
		if(checkArray!=null) {
			checkCart = new int[checkArray.length];
			for(int i=0; i<checkArray.length; i++) {
				checkCart[i] =Integer.parseInt(checkArray[i]);
			}
		}
		ADaoPCart dao = new ADaoPCart();
		ArrayList<ADtoPCart> dtos = dao.list(userID, checkCart);
		request.setAttribute("cartList", dtos);
	}
}

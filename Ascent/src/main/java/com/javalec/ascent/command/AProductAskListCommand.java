package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoAsk;
import com.javalec.ascent.dto.ADtoAsk;

public class AProductAskListCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		String productCode = (String) session.getAttribute("productCode");
		
		ADaoAsk daoAsk = new ADaoAsk();
		ArrayList<ADtoAsk> dtos = daoAsk.list(userID, productCode);
		request.setAttribute("list", dtos);
	}
	

}

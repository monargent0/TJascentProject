package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoAsk;

public class AProductAskWriteCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String userId = (String) session.getAttribute("userID");
		String productCode = (String) session.getAttribute("productCode");
		String askTitle = request.getParameter("askTitle");
		String askContent = request.getParameter("askContent");
		
		ADaoAsk daoAsk = new ADaoAsk();
		daoAsk.write(askTitle, askContent, userId, productCode);
	}


}

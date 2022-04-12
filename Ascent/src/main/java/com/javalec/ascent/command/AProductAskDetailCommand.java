package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoAsk;
import com.javalec.ascent.dto.ADtoAsk;

public class AProductAskDetailCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String askCode = request.getParameter("askCode");
		
		ADaoAsk daoAsk = new ADaoAsk();
		ADtoAsk dtoAsk = new ADtoAsk();
		
		dtoAsk = daoAsk.detail(askCode);
		
		request.setAttribute("productAskV", dtoAsk);
			
	}

}

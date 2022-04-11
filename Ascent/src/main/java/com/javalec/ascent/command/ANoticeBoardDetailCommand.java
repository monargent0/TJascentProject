package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoN;
import com.javalec.ascent.dto.ADtoN;

public class ANoticeBoardDetailCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String noticeCode = request.getParameter("noticeCode");
		
		ADaoN daoN = new ADaoN();
		ADtoN dtoN = new ADtoN();
		
		dtoN = daoN.detail(noticeCode);
		
		request.setAttribute("noticeBoardV", dtoN);
		
	}

}

package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoN;

public class DNoticeDeleteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String noticeCode = request.getParameter("noticeCode");
		
		ADaoN daoN = new ADaoN();
		daoN.noticeDelete(noticeCode);

	}

}

package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoN;

public class DNoticeModifyCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String noticeCode = request.getParameter("noticeCode");
		String noticeType = request.getParameter("noticeType");
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		
		ADaoN daoN = new ADaoN();
		daoN.modifyNotice(noticeCode, noticeType, noticeTitle, noticeContent);

	}

}

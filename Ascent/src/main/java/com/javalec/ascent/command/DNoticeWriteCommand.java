package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoN;

public class DNoticeWriteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		String noticeType = request.getParameter("noticeType");
		String noticeTitle = request.getParameter("noticeTitle");
		String noticeContent = request.getParameter("noticeContent");
		
		ADaoN daoN = new ADaoN();
		daoN.writeNotice(noticeType, noticeTitle, noticeContent,userID);
	}

}

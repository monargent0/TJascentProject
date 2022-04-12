package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoCounselReply;

public class ACounselReplyWriteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		
		String c_ReplyContent = request.getParameter("c_ReplyContent");
		String adminID = (String) session.getAttribute("adminID");
		
		ADaoCounselReply daoCounselReply = new ADaoCounselReply();
		daoCounselReply.write(c_ReplyContent, adminID);
	}

}

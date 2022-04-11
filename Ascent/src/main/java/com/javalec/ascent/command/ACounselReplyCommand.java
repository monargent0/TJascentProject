package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoCounselReply;
import com.javalec.ascent.dto.ADtoCR;

public class ACounselReplyCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String replyCode = request.getParameter("replyCode");
		
		ADaoCounselReply daoCounselReply = new ADaoCounselReply();
		ArrayList<ADtoCR> dtoCRs = daoCounselReply.list(replyCode);
		
		request.setAttribute("reply_view", dtoCRs);
	}

}

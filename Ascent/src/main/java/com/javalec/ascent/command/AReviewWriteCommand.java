package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoReview;

public class AReviewWriteCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userID");
		String reivewTitle = request.getParameter("reviewTitle");
		String reviewContent = request.getParameter("reviewContent");
		String reviewImage = request.getParameter("reviewImage");
		
		ADaoReview daoReview = new ADaoReview();
		daoReview.write(reivewTitle, reviewContent, userId, 0);
	
	}


}

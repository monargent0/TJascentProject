package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoReview;

public class AReviewDeleteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		int reviewCode = Integer.parseInt(request.getParameter("reviewCode"));
		
		ADaoReview daoReview = new ADaoReview();
		daoReview.delete(reviewCode);
	}

}

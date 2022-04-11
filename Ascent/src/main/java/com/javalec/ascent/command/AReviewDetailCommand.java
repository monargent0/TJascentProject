package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoReview;
import com.javalec.ascent.dto.ADtoR;

public class AReviewDetailCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String reviewCode = request.getParameter("reviewCode");
		
		ADaoReview daoReview = new ADaoReview();
		ADtoR dtoR = new ADtoR();
		
		dtoR = daoReview.detail(reviewCode);
		
		request.setAttribute("reviewDetailV", dtoR);

	}

}

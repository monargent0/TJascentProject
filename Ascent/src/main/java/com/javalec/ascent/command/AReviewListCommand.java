package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoReview;
import com.javalec.ascent.dto.ADtoR;

public class AReviewListCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		System.out.println(userID);	
		ADaoReview daoReview = new ADaoReview();
		ArrayList<ADtoR> dtos = daoReview.list(userID);
		request.setAttribute("list", dtos);
	}

	
}

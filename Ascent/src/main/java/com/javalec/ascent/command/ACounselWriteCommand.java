package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCounsel;

public class ACounselWriteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String counselType = request.getParameter("counselType");
		String counselTitle = request.getParameter("counselTitle");
		String counselContent = request.getParameter("counselContent");
		
		ADaoCounsel daoCounsel = new ADaoCounsel();
		daoCounsel.write(counselType, counselTitle, counselContent);
	}
}

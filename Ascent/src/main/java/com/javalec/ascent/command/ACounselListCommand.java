package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCounsel;
import com.javalec.ascent.dto.ADtoC;

public class ACounselListCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		ADaoCounsel daoCounsel = new ADaoCounsel();
		ArrayList<ADtoC> dtos = daoCounsel.list();
		request.setAttribute("list", dtos);
	}
}

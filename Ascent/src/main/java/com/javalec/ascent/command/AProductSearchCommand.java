package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;
import com.javalec.ascent.dto.ADtoP;

public class AProductSearchCommand implements ACommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ADaoP dao = new ADaoP();
		ArrayList<ADtoP> dtos = dao.searchList(null);
		request.setAttribute("List", dtos);
	}

}

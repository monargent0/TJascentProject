package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;
import com.javalec.ascent.dto.ADtoP;

public class AProductSearchCommand implements ACommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String txt = request.getParameter("searchText"); 	//main의 <form>
		
		System.out.println(txt);
		ADaoP dao = new ADaoP();							//adaop의 searchList
		ArrayList<ADtoP> dtos = dao.searchList(txt);
		request.setAttribute("searchList", dtos);
		
	}

}

package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;

public class DProductDetailCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String productCode = request.getParameter("productCode");
		
		ADaoP daoP = new ADaoP();
		request.setAttribute("pDetail", daoP.pDetailAdmin(productCode)); 

	}

}

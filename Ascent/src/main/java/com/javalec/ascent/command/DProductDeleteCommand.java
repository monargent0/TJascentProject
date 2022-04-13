package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;
import com.javalec.ascent.dao.ADaoUAddress;

public class DProductDeleteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String productCode = request.getParameter("productCode");
		ADaoP daoP = new ADaoP();
		daoP.deleteProduct(productCode);

	}

}

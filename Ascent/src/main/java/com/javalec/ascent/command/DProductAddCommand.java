package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;

public class DProductAddCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String productCode = request.getParameter("productCode");
		String productName= request.getParameter("productName");
		int productPrice= Integer.parseInt(request.getParameter("productPrice"));
		String productSize= request.getParameter("productSize");
		String productImages= request.getParameter("productImages");
		String category_categoryCode= request.getParameter("category_categoryCode");
		String productBrand= request.getParameter("productBrand");

		ADaoP daoP = new ADaoP();
		daoP.productAdd(productCode, productName, productPrice, productSize, productImages, category_categoryCode, productBrand);
	
	}

}

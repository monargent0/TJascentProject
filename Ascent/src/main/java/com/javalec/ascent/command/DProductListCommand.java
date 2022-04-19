package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoP;
import com.javalec.ascent.dto.DDtoP;

public class DProductListCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ADaoP daoP = new ADaoP();
		ArrayList<DDtoP> dtoPs = daoP.pListAdmin();
		request.setAttribute("pList", dtoPs);
	}

}

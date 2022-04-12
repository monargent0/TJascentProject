package com.javalec.ascent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoU;
import com.javalec.ascent.dto.DDtoU;

public class DMemberListCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		ADaoU daoU = new ADaoU();
		ArrayList<DDtoU> dtosi = daoU.signinList();
		request.setAttribute("inList", dtosi);
		System.out.println(dtosi.get(1).getUserID());
		
		ArrayList<DDtoU> dtoso = daoU.signoutList();
		request.setAttribute("outList", dtoso);
		
	}

}

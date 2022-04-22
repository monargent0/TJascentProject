package com.springlec.springAscent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.AddressDao;
import com.springlec.springAscent.dto.AddressDto;

public class AddressWriteCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userID");
		String addressType = request.getParameter("addressType");
		String postcode = request.getParameter("postcode");
		String mainAddress = request.getParameter("mainAddress");
		String detailAddress = request.getParameter("detailAddress");
		String extraAddress = request.getParameter("extraAddress");
		
		AddressDao dao = sqlSession.getMapper(AddressDao.class);
		ArrayList<AddressDto> dtos = dao.adrslist(userId);

		if (dtos.isEmpty()) {
			String aDefault = "default";
			dao.adrswrite(addressType, postcode, mainAddress, detailAddress, extraAddress, userId, aDefault);
		}else {
			String aDefault = "non";
			dao.adrswrite(addressType, postcode, mainAddress, detailAddress, extraAddress, userId, aDefault);
		}

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub

	}

}

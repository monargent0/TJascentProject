package com.springlec.springAscent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.AddressDao;
import com.springlec.springAscent.dto.AddressDto;

public class AddressListCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userID");
		
		AddressDao dao = sqlSession.getMapper(AddressDao.class);
		ArrayList<AddressDto> dtos = dao.adrslist(userId);
		model.addAttribute("address", dtos);
		
		
		for(int i = 0 ; i < dtos.size() ; i++) {
		String[] def = new String[dtos.size()];
		
			if(dtos.get(i).getaDefault().toString() == "default") {
				
				model.addAttribute(def[i], "기본배송지");
				
			}else if(dtos.get(i).getaDefault().toString() == "non") {
				model.addAttribute(def[i], "");
			}
		}

	}

}

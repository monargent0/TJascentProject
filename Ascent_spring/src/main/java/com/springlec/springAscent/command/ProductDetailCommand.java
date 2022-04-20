package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDaoAR;

public class ProductDetailCommand implements ACommand {

	@Override
	public void execute1(HttpServletRequest request, SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub

		String productCode = request.getParameter("productCode");
		
		PDaoAR dao = sqlSession.getMapper(PDaoAR.class);
		model.addAttribute("detail", dao.productDetail(productCode));

	}

	@Override
	public void execute2(HttpServletRequest request, SqlSession sqlSession) {
		// TODO Auto-generated method stub

	}

}

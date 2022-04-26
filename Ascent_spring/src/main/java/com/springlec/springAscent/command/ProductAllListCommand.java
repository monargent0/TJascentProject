package com.springlec.springAscent.command;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDao;
import com.springlec.springAscent.dto.PDtoPageMaker;
import com.springlec.springAscent.dto.Criteria;
public class ProductAllListCommand implements ACommand {


	@Override
	public void execute1(SqlSession sqlSession,HttpServletRequest request) {

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
	
		//페이징
		Criteria cri = new Criteria();
		PDao dao = sqlSession.getMapper(PDao.class);
		model.addAttribute("allList",dao.allListPaging(cri));
		model.addAttribute("total",dao.getTotal());
		
		//총 게시물 = 총 상품의 갯수 
		int total = dao.getTotal();
		//model.addAttribute("allList",dao.allList()); 
		PDtoPageMaker pageMake = new PDtoPageMaker(cri,total);
		model.addAttribute("pageMaker", pageMake);
	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

	}

}

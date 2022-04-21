package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDao;
import com.springlec.springAscent.dto.ADtoPageMaker;
import com.springlec.springAscent.dto.Criteria;

public class productAllListCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession,HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		
		Criteria cri = new Criteria();
		int total = 0;
		ADtoPageMaker pageMake = new  ADtoPageMaker(cri, total);
		model.addAttribute("pageMaker",pageMake);
		
		PDao dao = sqlSession.getMapper(PDao.class);
		model.addAttribute("allList",dao.allList(cri));
		
	}



	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub

	}

}

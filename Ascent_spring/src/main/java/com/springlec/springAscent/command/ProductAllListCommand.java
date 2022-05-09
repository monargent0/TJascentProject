


package com.springlec.springAscent.command;




import javax.servlet.ServletRequest;
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
		Criteria cri =new Criteria();
		PDao dao = sqlSession.getMapper(PDao.class);
		
		model.addAttribute("allList",dao.allListPaging(cri));
		//총 게시물 = 총 상품의 갯수 
		int total = dao.getTotal();
		model.addAttribute("total",dao.getTotal());
		
		System.out.println(total);
		
		model.addAttribute("skip",cri.getSkip());
		int skip = cri.getSkip();

		model.addAttribute("pageNum",cri.getPageNum());
		int pageNum= cri.getPageNum();
		
		
		System.out.println(skip);

		System.out.println(pageNum);
		PDtoPageMaker pageMake = new PDtoPageMaker(cri,total);
		model.addAttribute("pageMaker", pageMake);
	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {

	}

}

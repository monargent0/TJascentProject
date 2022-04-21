package com.springlec.springAscent.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.PDao;
import com.springlec.springAscent.dto.Criteria;
import com.springlec.springAscent.dto.PDto;
import com.springlec.springAscent.dto.PDtoPageMaker;

public class productAllListCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession,HttpServletRequest request) {
		// TODO Auto-generated method stub

	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// 총 출력할 게시물
		int count =  dao.count();
		//한페이지당 출력할 게시물 갯수
		int postNum = 20;
		// 전체 게시물 갯수
		int displayPost = (num - 1) * postNum;
		// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		 //한번에 표시할 페이징 번호의 갯수
		 int pageNum_cnt = 5;
		 //	표시되는 페이지 번호 중 마지막 번호 
		 int endPageNum = (int)(Math.ceil((double)num /(double)pageNum_cnt))* pageNum_cnt;
		 // 표시되는 페이지 번호 중 첫번째 번호
		 int startPageNum = endPageNum - (pageNum_cnt - 1);
	     // 마지막 번호 계산 
	     int realEnd = (int)(Math.ceil((double)count/(double)realEnd);
	      //* 전체 마지막 페이지(realend)가 화면에 보이는 마지막페이지(endPagenum)보다 작은 경우, 보이는 페이지(endPage) 값 조정 
	      if(realEnd <  endPageNum) {
	        endPageNum = realEnd;
	        }
	   // 이전 페이지, 다음 페이지 존재유무  
	      boolean prev = startPageNum == 1 ? false : true;
	      boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		
		PDao dao = sqlSession.getMapper(PDao.class);
		ArrayList<PDto> allList = null;
		allList = dao.listPage(displayPost, postNum);
		model.addAttribute("allList",dao.allList());
		//총 페이지  갯수 
		model.addAttribute("pageNum",pageNum);
		
		//시작 번호 ,끝번호 
		model.addAttribute("startPageNum",startPageNum);
		model.addAttribute("endPageNum",endPageNum);
		
		//이전, 다음 
		model.addAttribute("prev",prev);
		model.addAttribute("next",next);
		
		
		
	}



	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub

	}

}

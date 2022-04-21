package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;

public class ModifyPWCommand implements ACommand {

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
		String userID = (String) session.getAttribute("userID");
		String oldPW = request.getParameter("oldPW");
		String newPW = request.getParameter("newPW");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		
		String originPW = dao.confirmPW(userID);
		System.out.println(originPW);
		dao.modifyPW(newPW, oldPW, userID);
		
		String resultPW = dao.confirmPW(userID);
		System.out.println(resultPW);
		
		if(resultPW.equals(originPW) ) {
			model.addAttribute("resultTxt" , "기존 비밀번호를 확인해 주세요.");
			//session.setAttribute("resultTxt", "기존 비밀번호를 확인해 주세요." );
		} else if(originPW.equals(newPW)) {
			model.addAttribute("resultTxt", "기존 비밀번호를 확인해 주세요." );			
			//session.setAttribute("resultTxt", "기존 비밀번호를 확인해 주세요." );			
		} else{
			model.addAttribute("resultTxt", "비밀번호 변경이 완료되었습니다." );
			//session.setAttribute("resultTxt", "비밀번호 변경이 완료되었습니다." );
		}
		

	}

}

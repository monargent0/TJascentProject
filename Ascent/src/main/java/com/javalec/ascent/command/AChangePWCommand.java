package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ascent.dao.ADaoU;

public class AChangePWCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		String oldPW = request.getParameter("oldPW");
		String newPW = request.getParameter("newPW");

		ADaoU daoU = new ADaoU();
		String originPW = daoU.pwCheck(userID);
		daoU.pwChange(newPW, oldPW, userID);
		String resultPW = daoU.pwCheck(userID);
		
		System.out.println(oldPW);
		
		System.out.println(resultPW);
		
//		originPW = oldPW , newPW = resultPW 변경완료
//		newPW = orgingPW 비밀번호 입력 오류
//		resultPW = originPW 변경실패
		
		
		if(resultPW.equals(originPW) ) {
			session.setAttribute("resultTxt", "기존 비밀번호를 확인해 주세요." );
		} else if(originPW.equals(newPW)) {
			session.setAttribute("resultTxt", "기존 비밀번호를 확인해 주세요." );			
		} else{
			session.setAttribute("resultTxt", "비밀번호 변경이 완료되었습니다." );
		}
		
	}

}

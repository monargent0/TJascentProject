package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;
import com.springlec.springAscent.dto.UDtoLogin;


public class LoginCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		HttpSession session = request.getSession();
		String productCode = (String) session.getAttribute("productCode");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		UDtoLogin dto = dao.logIn(request.getParameter("userID"), request.getParameter("userPW"));
		
		
		if(dto == null){
			session.setAttribute("alertTxt", "일치하는 아이디가 없습니다." );
			request.setAttribute("return" , "logInV");
		} else if ( dto.getAdminCheck().toString().equals("admin")) {
			session.setAttribute("userID", dto.getUserID().toString() );
			request.setAttribute("return", "adminV");			
		} else if ( dto.getUserID().toString() != null) {
			session.setAttribute("userID", dto.getUserID().toString() );
			if(productCode == null){
				request.setAttribute("return", "main");
			}else if(productCode != null){
				request.setAttribute("return", "productDetail?productCode="+productCode);
				session.removeAttribute("productCode");
				productCode = null;
			}
		} 

	}

}

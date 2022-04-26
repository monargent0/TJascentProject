
package com.javalec.ascent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ascent.dao.ADaoCart;
import com.javalec.ascent.dao.ADaoO;


public class AOrderWriteCommand implements ACommand {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
			String userID = request.getParameter("userID");
			// cartCode string array로 받아서 int array로 바꿔주기
			String[] cartCode = request.getParameterValues("cartCode");
			int[] cartCodeArray = new int[cartCode.length];
			if(cartCode!=null) {
				for(int i=0; i<cartCode.length; i++) {
					cartCodeArray[i] =Integer.parseInt(cartCode[i]);
				}
			}			
						
			int orderSum = Integer.parseInt(request.getParameter("orderSum"));
			int orderAmount = Integer.parseInt(request.getParameter("orderAmount"));
			String orderReceiver = request.getParameter("orderReceiver");
			String orderPostcode = request.getParameter("orderPostcode");
			String orderMainAddress = request.getParameter("orderMainAddress");
			String orderDetailAddress = request.getParameter("orderDetailAddress");
			String orderExtraAddress = request.getParameter("orderExtraAddress");
			
			ADaoO dao = new ADaoO();
			dao.orderWrite(userID, cartCodeArray, orderSum, orderAmount, orderReceiver, orderPostcode, orderMainAddress, orderDetailAddress, orderExtraAddress);
			
			// 주문한 cart Delete하기
			ADaoCart daoC = new ADaoCart();
			daoC.delete(cartCodeArray);
	}
	

}

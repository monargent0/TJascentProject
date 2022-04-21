package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.CartDtoPC;
import com.springlec.springAscent.dto.OrderDtoOPC;

public interface OrderDao {

	public ArrayList<OrderDtoOPC> orderList(String userID);
	
	public ArrayList<CartDtoPC> orderWriteView(String userID, int checkCartArray);
	
	public void orderWrite(String userID, int cartCodeArray, int orderSum, int orderAmount, 
			String orderReceiver, String orderPostcode, String orderMainAddress, String orderDetailAddress, 
			String orderExtraAddress, String orderNumber);
	
	public ArrayList<OrderDtoOPC> orderDetail(String detailOrderNumber, String loingUserID);
	
}

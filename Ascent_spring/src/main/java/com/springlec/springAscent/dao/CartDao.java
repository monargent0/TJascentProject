package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.CartDtoPC;

public interface CartDao {

	public ArrayList<CartDtoPC> cartList(String userID);
	
	public void cartWrite(int cartAmount, String productCode, String userID);
	
	public void cartModify(int[] cartAmountArray, int[] cartCodeArray);
}

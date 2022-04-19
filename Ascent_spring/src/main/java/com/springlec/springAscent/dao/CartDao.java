package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.CartDtoPC;

public interface CartDao {

	public ArrayList<CartDtoPC> cartList(String userID, int[] checkCart);
	public void cartWrite(int cartAmount, String productCode, String userID);
}

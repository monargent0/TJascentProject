package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerCart {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ACommand cartListCommand = null;
	private ACommand cartWriteCommand = null;
	private ACommand cartModifyCommand = null;
	private ACommand cartDeleteCommand = null;
	
	private ACommand orderListCommand = null;
	private ACommand orderWriteCommand = null;
	private ACommand orderContentCommand = null;
	
	@Autowired
	public void auto(ACommand cartList, ACommand cartWrite, ACommand cartModify, ACommand cartDelete, 
			ACommand orderList, ACommand orderWrite, ACommand orderContent) {
		this.cartListCommand = cartList;
		this.cartWriteCommand = cartWrite;
		this.cartModifyCommand = cartModify;
		this.cartDeleteCommand = cartDelete;
		
		this.orderListCommand = orderList;
		this.orderWriteCommand = orderWrite;
		this.orderContentCommand = orderContent;
	}
	
	@RequestMapping("/cartList")
	public String cartList(HttpServletRequest request, Model model) {
		
		cartListCommand.execute(request, sqlSession, model);
		
		return "cartListV";
	}
	
	
	
	
}

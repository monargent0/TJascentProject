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
	
	private ACommand productDetailCommand = null;
	
	private ACommand cartListCommand = null;
	private ACommand cartWriteCommand = null;
	private ACommand cartModifyCommand = null;
	private ACommand cartDeleteCommand = null;
	
//	private ACommand orderListCommand = null;
//	private ACommand orderWriteCommand = null;
//	private ACommand orderContentCommand = null;
	
	@Autowired
	public void auto(ACommand productDetail, ACommand cartList, ACommand cartWrite, ACommand cartModify, ACommand cartDelete) {
		
		this.productDetailCommand = productDetail;
		
		this.cartListCommand = cartList;
		this.cartWriteCommand = cartWrite;
		this.cartModifyCommand = cartModify;
		this.cartDeleteCommand = cartDelete;
		
//		this.orderListCommand = orderList;
//		this.orderWriteCommand = orderWrite;
//		this.orderContentCommand = orderContent;
	}
	
	@RequestMapping("/productDetail")
	public String productDetail(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		productDetailCommand.execute3(sqlSession, request, model);
		
		return "productDetailV";
	}
	
	@RequestMapping("/cartList")
	public String cartList(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		cartListCommand.execute3(sqlSession, request, model);
		
		return "cartListV";
	}
	
	@RequestMapping("/cartWrite")
	public String cartWrite(HttpServletRequest request, Model model) {

		model.addAttribute("request", request);
		cartWriteCommand.execute1(sqlSession, request);
		
		return "redirect:productDetail";
	}
	
	@RequestMapping("/cartModify")
	public String cartModify(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		cartModifyCommand.execute1(sqlSession, request);
		
		return "redirect:cartList";
	}
	
	@RequestMapping("/cartDelete")
	public String cartDelete(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		cartDeleteCommand.execute1(sqlSession, request);
		
		return "redirect:cartList";
	}
}

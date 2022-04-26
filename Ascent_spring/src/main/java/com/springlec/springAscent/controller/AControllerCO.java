package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerCO {
	
	@Autowired
	private SqlSession sqlSession;
	private ACommand cartListCommand = null;
	private ACommand cartWriteCommand = null;
	private ACommand cartModifyCommand = null;
	private ACommand cartDeleteCommand = null;
	
	private ACommand orderListCommand = null;
	private ACommand orderWriteViewCommand = null;
	private ACommand orderWriteCommand = null;
	
	@Autowired
	public void auto(ACommand productDetail, ACommand cartList, ACommand cartWrite, ACommand cartModify, ACommand cartDelete
			, ACommand orderList, ACommand orderWriteView, ACommand orderWrite) {
		
		this.productDetailCommand = productDetail;
		
		this.cartListCommand = cartList;
		this.cartWriteCommand = cartWrite;
		this.cartModifyCommand = cartModify;
		this.cartDeleteCommand = cartDelete;
		
		this.orderListCommand = orderList;
		this.orderWriteViewCommand = orderWriteView;
		this.orderWriteCommand = orderWrite;
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
	
		String userID = request.getParameter("userID");
		
		model.addAttribute("request", request);
		cartModifyCommand.execute1(sqlSession, request);
		
		return "redirect:cartList?userID="+userID;
	}
	
	@RequestMapping("/cartDelete")
	public String cartDelete(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		cartDeleteCommand.execute1(sqlSession, request);
		
		return "redirect:cartList";
	}
	
	@RequestMapping("/orderList")
	public String orderList(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		orderListCommand.execute3(sqlSession, request, model);
		
		return "orderListV";
	}
	
	@RequestMapping("/orderWriteView")
	public String orderWriteView(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		orderWriteViewCommand.execute3(sqlSession, request, model);
		
		return "orderWriteV";
	}
	
	@RequestMapping("/orderWrite")
	public String orderWrite(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		orderWriteCommand.execute1(sqlSession, request);
		
		return "orderCompleteV";
		
	}
	
}

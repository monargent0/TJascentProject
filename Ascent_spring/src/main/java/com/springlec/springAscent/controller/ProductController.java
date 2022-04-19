package com.springlec.springAscent.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;
@Controller
public class ProductController {
	@Autowired
	private SqlSession sqlSession;
	ACommand command = null;
	
	//servlet-context에서 new를 선언해준것 
	private ACommand productAllListCommand = null;
	private ACommand productMainCommand = null;
	private ACommand productSearchCommand = null;
	private ACommand productpPListCommand = null;
	private ACommand productpTListCommand = null;
	private ACommand productpCListCommand = null;
	private ACommand productpWListCommand = null;
	private ACommand productsFListCommand = null;
	private ACommand productsCListCommand = null;
	private ACommand productsFTListCommand = null;
	private ACommand productsFRListCommand = null;
	private ACommand productsWListCommand = null;
	private ACommand productsOListCommand = null;
	
	@Autowired
	public void auto(SqlSession sqlSession, ACommand command, ACommand productAllListCommand,
			ACommand productMainCommand, ACommand productSearchCommand, ACommand productpPListCommand,
			ACommand productpTListCommand, ACommand productpCListCommand, ACommand productpWListCommand,
			ACommand productsFListCommand, ACommand productsCListCommand, ACommand productsFTListCommand,
			ACommand productsFRListCommand, ACommand productsWListCommand, ACommand productsOListCommand) {
		this.sqlSession = sqlSession;
		this.command = command;
		this.productAllListCommand = productAllListCommand;
		this.productMainCommand = productMainCommand;
		this.productSearchCommand = productSearchCommand;
		this.productpPListCommand = productpPListCommand;
		this.productpTListCommand = productpTListCommand;
		this.productpCListCommand = productpCListCommand;
		this.productpWListCommand = productpWListCommand;
		this.productsFListCommand = productsFListCommand;
		this.productsCListCommand = productsCListCommand;
		this.productsFTListCommand = productsFTListCommand;
		this.productsFRListCommand = productsFRListCommand;
		this.productsWListCommand = productsWListCommand;
		this.productsOListCommand = productsOListCommand;
	}
	
//	@RequestMapping("/productlist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//	
//	}
	//상품카테고리에 해당하는 제품 한 주소에 부여주기 
	@RequestMapping("/productperfumelist")
	public String productCategoryList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productList";
	
}
}

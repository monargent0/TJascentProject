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

	//servlet-context에서 new를 선언해준것 
	private ACommand productAllListCommand = null;
//	private ACommand productMainCommand = null;
//	private ACommand productSearchCommand = null;
//	private ACommand productpPListCommand = null;
//	private ACommand productpTListCommand = null;
//	private ACommand productpCListCommand = null;
//	private ACommand productpWListCommand = null;
//	private ACommand productsFListCommand = null;
//	private ACommand productsCListCommand = null;
//	private ACommand productsFTListCommand = null;
//	private ACommand productsFRListCommand = null;
//	private ACommand productsWListCommand = null;
//	private ACommand productsOListCommand = null;
	
	@Autowired
	public void auto(ACommand productAllList,
			ACommand productMain, ACommand productSearch, ACommand productpPList,
			ACommand productpTList, ACommand productpCList, ACommand productpWList,
			ACommand productsFList, ACommand productsCList, ACommand productsFTList,
			ACommand productsFRList, ACommand productsWList, ACommand productsOList) {
		this.productAllListCommand = productAllList;
//		this.productMainCommand = productMain;
//		this.productSearchCommand = productSearch;
//		this.productpPListCommand = productpPList;
//		this.productpTListCommand = productpTList;
//		this.productpCListCommand = productpCList;
//		this.productpWListCommand = productpWList;
//		this.productsFListCommand = productsFList;
//		this.productsCListCommand = productsCList;
//		this.productsFTListCommand = productsFTList;
//		this.productsFRListCommand = productsFRList;
//		this.productsWListCommand = productsWList;
//		this.productsOListCommand = productsOList;
	}
	
//	@RequestMapping("/productlist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//	
//	}
	//상품카테고리에 해당하는 제품 한 주소에 부여주기 
	@RequestMapping("/productlist")
	public String productCategoryList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productList";
	
}
}

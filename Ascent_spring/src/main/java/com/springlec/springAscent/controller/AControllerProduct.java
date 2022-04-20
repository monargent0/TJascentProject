package com.springlec.springAscent.controller;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;
@Controller
public class AControllerProduct {
	
	@Autowired
	private SqlSession sqlSession;

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
//	private ACommand productsFTListCommand = null;
//	private ACommand productsFRListCommand = null;
//	private ACommand productsWListCommand = null;
//	private ACommand productsOListCommand = null;
	
	@Autowired
	public void auto(ACommand productAllList,
			ACommand productMain, ACommand productSearch, ACommand productpPList,
			ACommand productpTList, ACommand productpCList, ACommand productpWList,
			ACommand productsFList, ACommand productsCList) {
		this.productAllListCommand = productAllList;
		this.productMainCommand = productMain;
		this.productSearchCommand = productSearch;
		this.productpPListCommand = productpPList;
		this.productpTListCommand = productpTList;
		this.productpCListCommand = productpCList;
		this.productpWListCommand = productpWList;
		this.productsFListCommand = productsFList;
		this.productsCListCommand = productsCList;
//		this.productsFTListCommand = productsFTList;
//		this.productsFRListCommand = productsFRList;
//		this.productsWListCommand = productsWList;
//		this.productsOListCommand = productsOList;
	//	ACommand productsFTList,
	//	ACommand productsFRList, ACommand productsWList, ACommand productsOList	
	}
	//모든 상품 
	@RequestMapping("/productalllist")
	public String allList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productAllListV"; //jsp 
	
	}
	//메인화면 상품 
	@RequestMapping("/main")
	public String mainList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "mainV";
		
	}
	//검색 
	@RequestMapping("/productsearchlist")
	public String searchList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productsearchListV";
		
	}
	@RequestMapping("/productperfumelist")
	public String pPList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productpPList";
		
	}
	@RequestMapping("/productotilettealllist")
	public String pTList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productpTList";
		
	}
	@RequestMapping("/productcolongelist")
	public String pCList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productpCList";
		
	}
	@RequestMapping("/productbodyspraylist")
	public String pBList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productpBList";
		
	}
	@RequestMapping("/productscentfloralList")
	public String sFList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productsFList";
		
	}
	@RequestMapping("/productscentcitruslist")
	public String sCList(Model model) {
		productAllListCommand.execute2(sqlSession, model);
		return "productsCList";
		
	}
//	@RequestMapping("/productalllist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//		
//	}
//	@RequestMapping("/productalllist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//		
//	}
//	@RequestMapping("/productalllist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//		
//	}
//	@RequestMapping("/productalllist")
//	public String allList(Model model) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllList";
//		
//	}
//
//	

}

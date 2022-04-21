package com.springlec.springAscent.controller;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;
import com.springlec.springAscent.dto.Criteria;
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
	private ACommand productpBListCommand = null;
	private ACommand productsFListCommand = null;
	private ACommand productsCListCommand = null;
	private ACommand productsFTListCommand = null;
	private ACommand productsFRListCommand = null;
	private ACommand productsWListCommand = null;
	private ACommand productsOListCommand = null;
	
	@Autowired
	public void auto(ACommand productAllList,
			ACommand productMain, ACommand productSearch, ACommand productpPList,
			ACommand productpTList, ACommand productpCList, ACommand productpBList,
			ACommand productsFList, ACommand productsCList,ACommand productsFTList,
			ACommand productsFRList, ACommand productsWList, ACommand productsOList	) {
		this.productAllListCommand = productAllList;
		this.productMainCommand = productMain;
		this.productSearchCommand = productSearch;
		this.productpPListCommand = productpPList;
		this.productpTListCommand = productpTList;
		this.productpCListCommand = productpCList;
		this.productpBListCommand = productpBList;
		this.productsFListCommand = productsFList;
		this.productsCListCommand = productsCList;
		this.productsFTListCommand = productsFTList;
		this.productsFRListCommand = productsFRList;
		this.productsWListCommand = productsWList;
		this.productsOListCommand = productsOList;
		
	}
	//모든 상품 (페이징 구현 )
	@RequestMapping("/allList")
	public String allList(Model model,Criteria cri) {
		
		System.out.println("전체 페이징 ");
		productAllListCommand.execute2(sqlSession, model);
		return "productAllListV"; //jsp 
	
	}
	
	//메인화면 상품 
	@RequestMapping("/main")
	public String mainList(Model model) {
		productMainCommand.execute2(sqlSession, model);
		return "mainV";
		
	}
	//검색 
	@RequestMapping("/productsearch")
	public String searchList(Model model) {
		productSearchCommand.execute2(sqlSession, model);
		return "productsearchListV";
		
	}
	@RequestMapping("/productperfumelist")
	public String pPList(Model model) {
		productpPListCommand.execute2(sqlSession, model);
		return "productpPListV";
		
	}
	@RequestMapping("/producttotilettelist")
	public String pTList(Model model) {
		productpTListCommand.execute2(sqlSession, model);
		return "productpTListV";
		
	}
	@RequestMapping("/productcolongelist")
	public String pCList(Model model) {
		productpCListCommand.execute2(sqlSession, model);
		return "productpCListV";
		
	}
	@RequestMapping("/productbodyspraylist")
	public String pBList(Model model) {
		productpBListCommand.execute2(sqlSession, model);
		return "productpBListV";
		
	}
	@RequestMapping("/productscentfloralList")
	public String sFList(Model model) {
		productsFListCommand.execute2(sqlSession, model);
		return "productsFListV";
		
	}
	@RequestMapping("/productscentcitruslist")
	public String sCList(Model model) {
		productsCListCommand.execute2(sqlSession, model);
		return "productsCListV";
		
	}
	@RequestMapping("/productscentfreshlist")
	public String sFRList(Model model) {
		productsFRListCommand.execute2(sqlSession, model);
		return "productsFRListV";
		
	}
	@RequestMapping("/productscentfruitylist")
	public String sFTList(Model model) {
		productsFTListCommand.execute2(sqlSession, model);
		return "productsFTListV";
		
	}
	@RequestMapping("/productscentwoodylist")
	public String sWList(Model model) {
		productsWListCommand.execute2(sqlSession, model);
		return "productsWListV";
		
	}
	@RequestMapping("/productscentoritentallist")
	public String sOList(Model model) {
		productsOListCommand.execute2(sqlSession, model);
		return "productsOListV";
		
	}

	

}

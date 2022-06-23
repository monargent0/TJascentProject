package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

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
	private ACommand ProductAllListCommand = null;
	private ACommand ProductMainCommand = null;
	private ACommand ProductSearchCommand = null;
	private ACommand ProductDetailCommand = null;
	private ACommand ProductpPListCommand = null;
	private ACommand ProductpTListCommand = null;
	private ACommand ProductpCListCommand = null;
	private ACommand ProductpBListCommand = null;
	private ACommand ProductsFListCommand = null;
	private ACommand ProductsCListCommand = null;
	private ACommand ProductsFTListCommand = null;
	private ACommand ProductsFRListCommand = null;
	private ACommand ProductsWListCommand = null;
	private ACommand ProductsOListCommand = null;
	
	@Autowired
	public void auto(ACommand ProductAllList,
			ACommand ProductMain, ACommand ProductSearch, ACommand ProductDetail,	ACommand ProductpPList,
			ACommand ProductpTList, ACommand ProductpCList, ACommand ProductpBList,
			ACommand ProductsFList, ACommand ProductsCList,ACommand ProductsFTList,
			ACommand ProductsFRList, ACommand ProductsWList, ACommand ProductsOList	) {
		this.ProductAllListCommand =ProductAllList;
		this.ProductMainCommand = ProductMain;
		this.ProductSearchCommand = ProductSearch;
		this.ProductDetailCommand = ProductDetail;
		this.ProductpPListCommand = ProductpPList;
		this.ProductpTListCommand = ProductpTList;
		this.ProductpCListCommand = ProductpCList;
		this.ProductpBListCommand = ProductpBList;
		this.ProductsFListCommand = ProductsFList;
		this.ProductsCListCommand = ProductsCList;
		this.ProductsFTListCommand = ProductsFTList;
		this.ProductsFRListCommand = ProductsFRList;
		this.ProductsWListCommand = ProductsWList;
		this.ProductsOListCommand = ProductsOList;
		
	}
	
	//모든 상품 
//	@RequestMapping("/allList")
//	public String allList(Model model,Criteria cri) {
//		productAllListCommand.execute2(sqlSession, model);
//		return "productAllListV"; //jsp 
//	}
	//모든 상품- 페이징 구현 
	@RequestMapping("/allList")
	public String allList(Model model,Criteria cri) {
		ProductAllListCommand.execute2(sqlSession, model);
		return "productAllListV"; //jsp 
	}
	
	//메인화면 상품 
	@RequestMapping("/main")
	public String mainList(Model model) {
		ProductMainCommand.execute2(sqlSession, model);
		return "mainV";
	}
	//검색 
	@RequestMapping("/productsearch")
	public String searchList(Model model) {
		ProductSearchCommand.execute2(sqlSession, model);
		return "productsearchListV";
	}
	
	//상세페이지
	@RequestMapping("/productDetailV")
	public String productdetail(HttpServletRequest request,	Model model) {
		ProductDetailCommand.execute3(sqlSession, request, model); 
		return "productDetailV";
	}
	
	
	@RequestMapping("/productperfumelist")
	public String pPList(Model model) {
		ProductpPListCommand.execute2(sqlSession, model);
		return "productpPListV";
		
	}
	@RequestMapping("/producttotilettelist")
	public String pTList(Model model) {
		ProductpTListCommand.execute2(sqlSession, model);
		return "productpTListV";
		
	}
	@RequestMapping("/productcolongelist")
	public String pCList(Model model) {
		ProductpCListCommand.execute2(sqlSession, model);
		return "productpCListV";
		
	}
	@RequestMapping("/productbodyspraylist")
	public String pBList(Model model) {
		ProductpBListCommand.execute2(sqlSession, model);
		return "productpBListV";
		
	}
	// 향 종류별 탭
	@RequestMapping("/productscentfloralList")
	public String sFList(Model model) {
		ProductsFListCommand.execute2(sqlSession, model);
		return "productsFListV";
		
	}
	@RequestMapping("/productscentcitruslist")
	public String sCList(Model model) {
		ProductsCListCommand.execute2(sqlSession, model);
		return "productsCListV";
		
	}
	@RequestMapping("/productscentfreshlist")
	public String sFRList(Model model) {
		ProductsFRListCommand.execute2(sqlSession, model);
		return "productsFRListV";
		
	}
	@RequestMapping("/productscentfruitylist")
	public String sFTList(Model model) {
		ProductsFTListCommand.execute2(sqlSession, model);
		return "productsFTListV";
		
	}
	@RequestMapping("/productscentwoodylist")
	public String sWList(Model model) {
		ProductsWListCommand.execute2(sqlSession, model);
		return "productsWListV";
		
	}
	@RequestMapping("/productscentoritentallist")
	public String sOList(Model model) {
		ProductsOListCommand.execute2(sqlSession, model);
		return "productsOListV";
		
	}

	

}

package com.springlec.springAscent.dao;

import java.util.ArrayList;


import com.springlec.springAscent.dto.Criteria;
import com.springlec.springAscent.dto.PDtoDetail;
import com.springlec.springAscent.dto.PDtoList;


public interface PDao {
	
	public ArrayList<PDtoList> allList();	//product-all
	public ArrayList<PDtoList> allListPaging(Criteria cri); //product-all-paging
	public int getTotal();
	public ArrayList<PDtoList> mainList();	//main 화면구성 
	public ArrayList<PDtoList> searchList();	//검색할 때 보이는 
	public ArrayList<PDtoList> pPList(); 	//perfume - perfume
	public ArrayList<PDtoList> pTList();	//perfume-toilette
	public ArrayList<PDtoList> pCList();	//perfume-cologne
	public ArrayList<PDtoList> pBList();	//perfume-bodyspray
	public ArrayList<PDtoList> sFList();	//scent-floral
	public ArrayList<PDtoList> sCList();	//scent-citrus
	public ArrayList<PDtoList> sFRList();	//scent-fresh
	public ArrayList<PDtoList> sFTList();	//scent-fruity
	public ArrayList<PDtoList> sWList();	//scent-woody
	public ArrayList<PDtoList> sOList();	//scent-oritental
	public PDtoDetail productDetail(String productCode);	//	상품디테일 
	
	
}

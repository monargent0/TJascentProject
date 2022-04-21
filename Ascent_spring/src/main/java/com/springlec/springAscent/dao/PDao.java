package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.Criteria;
import com.springlec.springAscent.dto.PDto;


public interface PDao {
	
	public ArrayList<PDto> allList(Criteria cri);	//product-all
	public int getTotal();				//상품 전체게시글 갯수 
	public ArrayList<PDto> mainList();	//main 화면구성 
	public ArrayList<PDto> searchList();	//검색할 때 보이는 
	public ArrayList<PDto> pPList(); 	//perfume - perfume
	public ArrayList<PDto> pTList();	//perfume-toilette
	public ArrayList<PDto> pCList();	//perfume-cologne
	public ArrayList<PDto> pBList();	//perfume-bodyspray
	public ArrayList<PDto> sFList();	//scent-floral
	public ArrayList<PDto> sCList();	//scent-citrus
	public ArrayList<PDto> sFRList();	//scent-fresh
	public ArrayList<PDto> sFTList();	//scent-fruity
	public ArrayList<PDto> sWList();	//scent-woody
	public ArrayList<PDto> sOList();	//scent-oritental
	
	
}

package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.ADtoP;


public interface ADaoP {
	public ArrayList<ADtoP> allList();	//product-all
	public ArrayList<ADtoP> mainList();	//main 화면구성 
	public ArrayList<ADtoP> searchList();	//검색할 때 보이는 
	public ArrayList<ADtoP> pPList(); 	//perfume - perfume
	public ArrayList<ADtoP> pTList();	//perfume-toilette
	public ArrayList<ADtoP> pCList();	//perfume-cologne
	public ArrayList<ADtoP> pBList();	//perfume-bodyspray
	public ArrayList<ADtoP> sFList();	//scent-floral
	public ArrayList<ADtoP> sCList();	//scent-citus
	public ArrayList<ADtoP> sFRList();	//scent-fresh
	public ArrayList<ADtoP> sFTList();	//scent-fruity
	public ArrayList<ADtoP> sWList();	//scent-woody
	public ArrayList<ADtoP> sOList();	//scent-oritental
	
	
}

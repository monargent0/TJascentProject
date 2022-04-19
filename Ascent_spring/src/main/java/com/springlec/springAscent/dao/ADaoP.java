package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.ADtoP;


public interface ADaoP {

	public ArrayList<ADtoP> list();
	public ArrayList<ADtoP> mainList();
	public ArrayList<ADtoP> searchList(String searchText);
	public ArrayList<ADtoP> pPList();
	public ArrayList<ADtoP> pTList();
	public ArrayList<ADtoP> pCList();
	public ArrayList<ADtoP> pBList();
	public ArrayList<ADtoP> sFList();
	public ArrayList<ADtoP> sCList();
	public ArrayList<ADtoP> sFRList();
}

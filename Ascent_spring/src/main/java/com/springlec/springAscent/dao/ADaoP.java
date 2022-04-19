package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.ADtoP;


public interface ADaoP {

	public ArrayList<ADtoP> list();
	public ArrayList<ADtoP> mainList();
	public ArrayList<ADtoP> searchList(String searchText);
	public ArrayList<ADtoP> pPList();
	
}

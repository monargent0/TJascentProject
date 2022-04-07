package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoP;

public class ADaoP {

	DataSource dataSource;
	
	public ADaoP() {
		
	}
	
	public ArrayList<ADtoP> apPlist() {
		ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			String query1 = "select productCode,productName,productPrice,productSize,productDetail,category_categoryCode from product";
			ps = conn.prepareStatement(query1);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String productCode = rs.getString("productCode");
				String productName = rs.getString("productName");
				int productPrice = rs.getInt("productPrice");
				String productSize = rs.getString("productSize");
				String productDetail = rs.getString("productDetail");
				String category_categoryCode = rs.getString("category_categoryCode");
				
				ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productDetail, category_categoryCode);
				dtoPs.add(dtoP);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close(); //데이터가 있으면 close
				if(ps!=null) ps.close();
				if(conn!= null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtoPs;
 		
		
	}
	
}

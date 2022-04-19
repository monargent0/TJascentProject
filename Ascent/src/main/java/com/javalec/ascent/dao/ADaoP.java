package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoP;
import com.javalec.ascent.dto.ADtoU;
import com.javalec.ascent.dto.DDtoP;

public class ADaoP {

	DataSource dataSource;
	
	public ADaoP() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	} 
	//전체목록
	public ArrayList<ADtoP> allList() {
		ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			String sql = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product order by productCode desc  ";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String productCode = rs.getString("productCode");
				String productName = rs.getString("productName");
				int productPrice = rs.getInt("productPrice");
				String productSize = rs.getString("productSize");
				String productImages = rs.getString("productImages");
				String category_categoryCode = rs.getString("category_categoryCode");
				ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
	//메인 화면 - 리스트 
	public ArrayList<ADtoP> mainList() {
		ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			String sql2 = "select * from product where productName like '%로즈%' order by productCode desc limit 4 ";
			ps = conn.prepareStatement(sql2);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String productCode = rs.getString("productCode");
				String productName = rs.getString("productName");
				int productPrice = rs.getInt("productPrice");
				String productSize = rs.getString("productSize");
				String productImages = rs.getString("productImages");
				String category_categoryCode = rs.getString("category_categoryCode");
				ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
	// product검색
	public ArrayList<ADtoP> searchList(String searchText){
		ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>(); //return dtops 
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
				
	try {  
		conn = dataSource.getConnection();
		String sql = "select * from product where replace(productName,' ','')like ? or replace(productBrand,' ','') like ? order by productCode desc";
		ps = conn.prepareStatement(sql);
		searchText = searchText.replaceAll(" " , "");	//공백 제거 
		searchText = searchText.replaceAll("\\p{Z}", "");
		ps.setString(1, "%"+searchText+"%");
		ps.setString(2, "%"+searchText+"%");
		rs = ps.executeQuery();
	
		while(rs.next()) {
			String productCode = rs.getString("productCode");
			String productName = rs.getString("productName");
			int productPrice = rs.getInt("productPrice");
			String productSize = rs.getString("productSize");
			String productImages = rs.getString("productImages");
			String category_categoryCode = rs.getString("category_categoryCode");
			
			ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
			dtoPs.add(dtoP);
			}         
		} catch(Exception e) {
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
	return dtoPs;//상품 리스트 반환
	}

			

	// 향수종류 - 퍼퓸
	public ArrayList<ADtoP> pPList() {
		ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like 'P-%'";
			ps = conn.prepareStatement(query1);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				String productCode = rs.getString("productCode");
				String productName = rs.getString("productName");
				int productPrice = rs.getInt("productPrice");
				String productSize = rs.getString("productSize");
				String productImages = rs.getString("productImages");
				String category_categoryCode = rs.getString("category_categoryCode");
				
				ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
	} // 향수종류 - 퍼퓸
	
	// toilette category
		public ArrayList<ADtoP> pTList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like 'T-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//cologne 
		public ArrayList<ADtoP> pCList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like 'C-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//bodyspray
		public ArrayList<ADtoP> pBList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like 'B-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//floral
		public ArrayList<ADtoP> sFList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-f-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//citrus 
		public ArrayList<ADtoP> sCList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-c-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//fresh
		public ArrayList<ADtoP> sFRList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-fr-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//fruity
		public ArrayList<ADtoP> sFTList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-ft-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//woody
		public ArrayList<ADtoP> sWList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-w-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//Oriental
		public ArrayList<ADtoP> sOList() {
			ArrayList<ADtoP> dtoPs = new ArrayList<ADtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String query1 = "select productCode,productName,productPrice,productSize,productImages,category_categoryCode from product where productCode like '%-o-%'";
				ps = conn.prepareStatement(query1);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String category_categoryCode = rs.getString("category_categoryCode");
					
					ADtoP dtoP = new ADtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode);
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
		
		//관리자 전체목록
		public ArrayList<DDtoP> pListAdmin() {
			ArrayList<DDtoP> dtoPs = new ArrayList<DDtoP>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = dataSource.getConnection();
				String sql = "select * from product order by productCode desc  ";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					String productCode = rs.getString("productCode");
					String productName = rs.getString("productName");
					int productPrice = rs.getInt("productPrice");
					String productSize = rs.getString("productSize");
					String productImages = rs.getString("productImages");
					String productBrand = rs.getString("productBrand");
					String category_categoryCode = rs.getString("category_categoryCode");
					DDtoP dtoP = new DDtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode, productBrand);
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
			
		}// 관리자 전체목록
		
		// 관리자 상품 추가
		public void productAdd(String productCode,String productName ,int productPrice, String productSize, String productImages , String category_categoryCode , String productBrand ) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				connection = dataSource.getConnection(); // DB연결 끝
				String query = "insert into product (productCode, productName, productPrice, productSize, productImages, category_categoryCode, productBrand) ";
				query += "values (?,?,?,?,?,?,?)";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, productCode);
				preparedStatement.setString(2, productName);
				preparedStatement.setInt(3, productPrice);
				preparedStatement.setString(4, productSize);
				preparedStatement.setString(5, productImages);
				preparedStatement.setString(6, category_categoryCode);
				preparedStatement.setString(7, productBrand);
				
				preparedStatement.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			} // finally 메모리 정리 ;
			
		} // 관리자 상품 추가
		
		//관리자 상품상세
		public DDtoP pDetailAdmin(String pproductCode) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			DDtoP dto = null;
			
			try {
				connection = dataSource.getConnection();
				String query = "select productCode, productName, productPrice, productSize, productImages, category_categoryCode, productBrand " ;
					query += "from product where productCode =?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, pproductCode);
				resultSet = preparedStatement.executeQuery();
					
				if(resultSet.next()) {
					String productCode =resultSet.getString("productCode");
					String productName = resultSet.getString("productName");
					int productPrice = resultSet.getInt("productPrice");
					String productSize = resultSet.getString("productSize");
					String productImages = resultSet.getString("productImages");
					String productBrand = resultSet.getString("productBrand");
					String category_categoryCode = resultSet.getString("category_categoryCode");
							
					dto = new DDtoP(productCode, productName, productPrice, productSize, productImages, category_categoryCode, productBrand);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				try {
					if(resultSet != null) resultSet.close();
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			} //finally
			return dto;
		} //관리자상품상세
		
		// 관리자 상품 modify
		public void modifyProduct(String productName, int productPrice, String productSize , String productBrand, String productCode ,String productImages) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				//DB연결메서드 불러오기
				connection = dataSource.getConnection(); 
				//pstmt 생성
				String query = "update product set productName = ?, productPrice = ?, productSize = ? , productBrand = ?, productImages = ? where productCode = ?" ;
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, productName);
				preparedStatement.setInt(2, productPrice);
				preparedStatement.setString(3, productSize);
				preparedStatement.setString(4, productBrand);
				preparedStatement.setString(5, productImages);
				preparedStatement.setString(6, productCode);
				//실행 
				preparedStatement.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally { 
					try {
						if(preparedStatement !=null) preparedStatement.close();
						if(connection != null) connection.close();
					}catch (Exception e) {
						e.printStackTrace();
					}
			}
		} // 관리자 상품 modify		
		
		// 관리자 상품 delete 
		public void deleteProduct(String productCode) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				connection = dataSource.getConnection(); // DB연결 끝
				String query = "delete from product where productCode = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, productCode);
				
				preparedStatement.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(preparedStatement != null) preparedStatement.close();
					if(connection != null) connection.close();
				}catch (Exception e) {
					e.printStackTrace();
				}
			}// finally 메모리 정리 ; 이상 있거나 없거나 무조건 거친다.

		} // delete 삭제
		
}

//package com.javalec.ascent.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Timestamp;
//import java.util.ArrayList;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;
//
//import com.javalec.ascent.dto.ADtoC;
//
//public class ADaoAsk {
//	
//	DataSource dataSource;
//	
//	public ADaoAsk() {
//		try {
//			Context context = new InitialContext();
//			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//
//	}
//
//	public ArrayList<ADtoC> list(String userID, String productCode){
//		ArrayList<ADtoC> dtos = new ArrayList<ADtoC>();
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		ResultSet resultSet = null;
//		
//			try {
//				connection = dataSource.getConnection();
//				String query ="select askTitle, askContent, askDate, user_userID, product_productCode, c_ReplyCheck from productask where product_productCode = ?";
//				preparedStatement = connection.prepareStatement(query);
//				preparedStatement.setString(1, userID);
//				resultSet = preparedStatement.executeQuery();
//				
//				while(resultSet.next()) {
//					int counselCode = resultSet.getInt("counselCode");
//					String counselType = resultSet.getString("counselType");
//					String counselTitle = resultSet.getString("counselTitle");
//					String counselContent = resultSet.getString("counselContent");
//					Timestamp counselDate = resultSet.getTimestamp("counselDate");
//					String c_ReplyCheck = resultSet.getString("c_ReplyCheck");
//					
//					ADtoC dtoC = new ADtoC(counselCode, counselType, counselTitle, counselContent, counselDate, c_ReplyCheck);
//					dtos.add(dtoC); 
//			}
//	}catch(Exception e) {
//		e.printStackTrace();
//	}finally {
//		try {
//			if(resultSet != null) resultSet.close();
//			if(preparedStatement != null) preparedStatement.close();
//			if(connection != null) connection.close();
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
//			return dtos;
//	}// List 불러오기
//
//	
//	// write
//	public void write(String askTitle, String askContent, String userID, String productCode) {
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		
//		try {
//			connection = dataSource.getConnection();
//			String query = "insert into productask (askTitle, askContent, askDate, user_userID, product_productCode, c_ReplyCheck ) values (?,?,now(),?,?,'미답변' )";
//			preparedStatement = connection.prepareStatement(query);
//			preparedStatement.setString(1, askTitle);
//			preparedStatement.setString(2, askContent);
//			preparedStatement.setString(3, userID);
//			preparedStatement.setString(4, productCode);
//			
//			preparedStatement.executeUpdate();
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if(preparedStatement != null) preparedStatement.close();
//				if(connection != null) connection.close();
//			}catch (Exception e) {
//				e.printStackTrace();
//			}
//		}// finally 메모리 정리 ; 이상 있거나 없거나 무조건 거친다.
//
//	}
//}

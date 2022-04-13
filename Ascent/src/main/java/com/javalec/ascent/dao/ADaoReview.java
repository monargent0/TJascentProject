package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoC;
import com.javalec.ascent.dto.ADtoR;

public class ADaoReview {
	
	DataSource dataSource;
	
	public ADaoReview() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
			
		}catch(Exception e) {
			e.printStackTrace();
		}

	}	

	public ArrayList<ADtoR> list(String userID, int orderCode){
		ArrayList<ADtoR> dtos = new ArrayList<ADtoR>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
			try {
				connection = dataSource.getConnection();
				String query ="select reviewCode, reviewTitle, reviewContent, reviewImage from review where user_userID = ? and aOrder_orderCode = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, userID);
				preparedStatement.setInt(2, orderCode);
				resultSet = preparedStatement.executeQuery();
				
				while(resultSet.next()) {
					int reviewCode = resultSet.getInt("reviewCode");
					String reviewTitle = resultSet.getString("reviewTitle");
					String reviewContent = resultSet.getString("reviewContent");
					String reviewImage = resultSet.getString("reviewImage");
		
					ADtoR dtoR = new ADtoR(reviewCode, reviewTitle, reviewContent, reviewImage);
					dtos.add(dtoR); 
			}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(resultSet != null) resultSet.close();
			if(preparedStatement != null) preparedStatement.close();
			if(connection != null) connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
			return dtos;
	}// 리뷰 List(Review)

	public void write(String reviewTitle, String reviewContent, String userID, int orderCode) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "insert into review (reviewTitle, reviewContent, user_userID, aOrder_orderCode) values (?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, reviewTitle);
			preparedStatement.setString(2, reviewContent);
			preparedStatement.setString(3, userID);
			preparedStatement.setInt(4, orderCode);
			
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

	} // Write 리뷰 쓰기

//	public void modify(String reviewTitle, String reviewContent, String userID, int orderCode) {
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		
//		try {
//			connection = dataSource.getConnection(); // DB연결 끝
//			String query = "update review set reviewTitle = ?, reviewContent = ? where reviewCode = ? and user_userID = ?";
//			preparedStatement = connection.prepareStatement(query);
//			preparedStatement.setString(1, reviewTitle);
//			preparedStatement.setString(2, reviewContent);
//			preparedStatement.setString(3, userID);
//			preparedStatement.setInt(4, orderCode);
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
//	}// modify(보류)
	
	public void delete(int reviewCode) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection(); // DB연결 끝
			String query = "delete from review where reviewCode = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, reviewCode);
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

	} // delete 리뷰 삭제

	public ADtoR detail(String AreviewCode) {
		
		ADtoR dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from review where reviewCode = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(AreviewCode));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int reviewCode = resultSet.getInt("reviewCode");
				String reviewTitle = resultSet.getString("reviewTitle");
				String reviewContent = resultSet.getString("reviewContent");
				
				dto = new ADtoR(reviewCode, reviewTitle, reviewContent, null);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {	// finally :  이상이 있을 때나 없을 때나 무조건 finally 속으로 온다.
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}
	
} // Detail 리뷰 상세보기

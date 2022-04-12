package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ADaoOAddress {

	DataSource dataSource;
	
	public ADaoOAddress() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void addressWrite(String addressType, String postcode, String mainAddress , String detailAddress, String extraAddress, String user_userID ) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
			
		try {
			connection = dataSource.getConnection();
			String query = "insert into address (addressType, postcode, mainAddress, detailAddress, extraAddress, user_userID ) values (?,?,?,?,?,? )";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, addressType);
			preparedStatement.setString(2, postcode);
			preparedStatement.setString(3, mainAddress);
			preparedStatement.setString(4, detailAddress);
			preparedStatement.setString(5, extraAddress);
			preparedStatement.setString(6, user_userID);
				
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
	}// addressWrite
}

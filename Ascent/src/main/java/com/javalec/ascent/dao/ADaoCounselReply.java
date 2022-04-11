package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoCR;

public class ADaoCounselReply {
	DataSource dataSource;
	
	public ADaoCounselReply() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	 
}
	 
		public ArrayList<ADtoCR> list(String adminID){
			ArrayList<ADtoCR> dtos = new ArrayList<ADtoCR>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
				try {
					connection = dataSource.getConnection();
					String query = "select replyCode, c_ReplyContent, replyDate from reply where adminID = ? ";
					preparedStatement = connection.prepareStatement(query);
					preparedStatement.setString(1, adminID);
					resultSet = preparedStatement.executeQuery();
					
					while(resultSet.next()) {
						int replyCode = resultSet.getInt("replyCode");
						String c_ReplyContent = resultSet.getString("c_ReplyContent");
						Timestamp replyDate = resultSet.getTimestamp("replyDate");
						ADtoCR dtoCR = new ADtoCR(replyCode, c_ReplyContent, replyDate);
						dtos.add(dtoCR); 
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
			
			
		} // List
			
		public void write(String replyContent) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				connection = dataSource.getConnection(); // DB연결 끝
				String query = "insert into reply (replyContent, replyDate) values (?, now() )";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, replyContent);
				
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


		}	// Write
				
		public void delete(int replyCode) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				connection = dataSource.getConnection(); // DB연결 끝
				String query = "delete from reply where replyCode = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, replyCode);
				
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

		} // delete

		public void modify(int replyCode, String replyContent) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			try {
				connection = dataSource.getConnection(); // DB연결 끝
				String query = "update reply set replyContent = ? where replyCode = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, replyContent);			
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

		}// modify
 
		public ADtoCR contentView(String sreplyCode) {
	
			ADtoCR dtoCR = null;
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
	
			try {
				connection = dataSource.getConnection();
				String query = "select * from reply where replyCode = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setInt(1, Integer.parseInt(sreplyCode));
				resultSet = preparedStatement.executeQuery();
				
				if(resultSet.next()) {
					int replyCode = resultSet.getInt("replyCode");
					String c_ReplyContent = resultSet.getString("c_ReplyContent");
			
					dtoCR = new ADtoCR(replyCode, c_ReplyContent, null);
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
	return dtoCR;
	
	} // contentview
	 
} 
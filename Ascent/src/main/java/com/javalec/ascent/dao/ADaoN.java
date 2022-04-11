package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoC;
import com.javalec.ascent.dto.ADtoN;

public class ADaoN {

	private static ADaoN instance = new ADaoN();
	
	
	public static ADaoN getInstance() {
		return instance;
	}
	
	
DataSource dataSource;
	
	public ADaoN() {
		// TODO Auto-generated constructor stub
	} {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public ArrayList<ADtoN> list(){
		ArrayList<ADtoN> dtos = new ArrayList<ADtoN>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select noticeCode, noticeType, noticeTitle, noticeContent, noticeDate from noticeboard";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int noticeCode = resultSet.getInt("noticeCode");
				String noticeType = resultSet.getString("noticeType");
				String noticeTitle = resultSet.getString("noticeTitle");
				String noticeContent = resultSet.getString("noticeContent");
				Timestamp noticeDate = resultSet.getTimestamp("noticeDate");
				
				ADtoN dto = new ADtoN(noticeCode, noticeType, noticeTitle, noticeContent, noticeDate);
				dtos.add(dto); 
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
		return dtos;
		
		
	}	// 공지사항 list

	public ADtoN detail(String AnoticeCode) {
		
		ADtoN dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from notice where noticeCode = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(AnoticeCode));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int noticeCode = resultSet.getInt("noticeCode");
				String noticeType = resultSet.getString("noticeType");
				String noticeTitle = resultSet.getString("noticeTitle");
				String noticeContent = resultSet.getString("noticeContent");
				Timestamp noticeDate = resultSet.getTimestamp("noticeDate");
				
				dto = new ADtoN(noticeCode, noticeType, noticeTitle, noticeContent, noticeDate);
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

	} // Detail 상세보기

		
	// 리스트 페이지에 보여줄 로직(페이징 처리)
	public List<ADtoN> getList(int startRow, int pageSize) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		// 페이징 처리를 위한 sql / 인라인뷰, rownum 사용
		String query = "select * from noticeboard limit ?,? ";
		List<ADtoN> list = null;
		try {
			connection = dataSource.getConnection(); // 커넥션을 얻어옴
			preparedStatement = connection.prepareStatement(query); // sql 정의
			preparedStatement.setInt(1, startRow-1); // sql 물음표에 값 매핑
			preparedStatement.setInt(2, pageSize);
			resultSet = preparedStatement.executeQuery(); // sql 실행
			
			while (resultSet.next()) { // 데이터베이스에 데이터가 있으면 실행
				list = new ArrayList<ADtoN>(); // list 객체 생성
			
					// 반복할 때마다 ExboardDTO 객체를 생성 및 데이터 저장
				ADtoN board = new ADtoN();
				board.setNoticeCode(resultSet.getInt("noticeCode"));		
				board.setNoticeType(resultSet.getString("noticeType"));
				board.setNoticeTitle(resultSet.getString("noticeTitle"));
				board.setNoticeContent(resultSet.getString("noticeContent"));
				board.setNoticeDate(resultSet.getTimestamp("noticeDate"));
				list.add(board); // list에 0번 인덱스부터 board 객체의 참조값을 저장
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}// DB 연결 종료 / Connection 반환
		}
		return list; // list 반환
	}

	// 총 레코드 수 구하는 로직
	public int getCount(){
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int count = 0;
		String query = "select count(*) from noticeboard";
		try {
			connection = dataSource.getConnection();
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			if(resultSet.next()){
				count = resultSet.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return count; // 총 레코드 수 리턴
	} // Paging

}

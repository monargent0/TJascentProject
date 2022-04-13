package com.javalec.ascent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.ascent.dto.ADtoOPCart;

public class ADaoOPCart {

	DataSource dataSource;
	public ADaoOPCart() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/ascent");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<ADtoOPCart> list(String userID) {
		ArrayList<ADtoOPCart> dtosL = new ArrayList<ADtoOPCart>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			String queryA = "select o.orderCode, o.orderNumber, o.orderDate, p.productImages, p.productName, p.productSize, p.productPrice, ";
			String queryB = "c.cartAmount, o.orderAmount, o.orderSum, o.cart_cartCode, o.user_userID from userinfo u, cart c, aorder o, product p ";
			String queryC = "where o.cart_cartCode = c.cartCode and o.user_userID = u.userID and o.user_userID = ? group by orderNumber";
			
			preparedStatement = connection.prepareStatement(queryA+queryB+queryC);
			preparedStatement.setString(1, userID);
			
			resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				int orderCode = resultSet.getInt("orderCode");
				String orderNumber = resultSet.getString("orderNumber");
				String orderDate = resultSet.getString("orderDate");
				String productImages = resultSet.getString("productImages");
				String productName = resultSet.getString("productName");
				String productSize = resultSet.getString("productSize");
				int productPrice = resultSet.getInt("productPrice");
				int	cartAmount = resultSet.getInt("cartAmount");
				int	cartSum = productPrice*cartAmount;
				int	orderAmount = resultSet.getInt("orderAmount");
				int	orderSum = resultSet.getInt("orderSum");
				
				int cart_cartCode = resultSet.getInt("cart_cartCode");
				String user_userID = resultSet.getString("user_userID");
				
				ADtoOPCart dtoL = new ADtoOPCart(orderCode, orderNumber, orderDate, productImages, productName, productSize, productPrice, cartAmount, cartSum, orderAmount, orderSum, cart_cartCode, user_userID);
				dtosL.add(dtoL);
			}
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet != null)resultSet.close();
				if(preparedStatement != null)preparedStatement.close();
				if(connection != null)connection.close();
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return dtosL;
	}
	
	public ArrayList<ADtoOPCart> orderDetail(String orderNumber, String userID) {
		ArrayList<ADtoOPCart> dtosD = new ArrayList<ADtoOPCart>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;	
		
		try {
			connection = dataSource.getConnection();
			String query = "select aorder, p.productImages, p.productName, p.productSize, p.productPrice, c.cartAmount, "
					+ "from aorder o, cart c, product p, userinfo u where o.user_userID = u.userID and orderNumber = ? and userID = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, orderNumber);
			preparedStatement.setString(2, userID);
			
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int orderCode = resultSet.getInt("orderCode");
				String orderDate = resultSet.getString("orderDate");
				String productImages = resultSet.getString("productImages");
				String productName = resultSet.getString("productName");
				String productSize = resultSet.getString("productSize");
				int productPrice = resultSet.getInt("productPrice");
				int cartAmount = resultSet.getInt("cartAmount");
				int cartSum = productPrice*cartAmount;
				
				int cart_cartCode = resultSet.getInt("cart_cartCode");
				String user_userID = resultSet.getString("user_userID");
				
				ADtoOPCart dtoD = new ADtoOPCart(orderCode, orderNumber, orderDate, productImages, productName, productSize, productPrice, cartAmount, cartSum, cartAmount, orderCode, cart_cartCode, user_userID);
				dtosD.add(dtoD);
			}
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} 
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} 
		}
		return dtosD;
	}
}

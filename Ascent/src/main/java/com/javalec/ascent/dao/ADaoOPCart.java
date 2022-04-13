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
			String query = "select o.orderCode, o.orderNumber, o.orderDate, c.cartAmount, o.orderAmount, o.orderSum, o.cart_cartCode, o.user_userID, "
					+ "p.productImages, p.productName, p.productSize, p.productPrice from userinfo u, cart c, aorder o, product p "
					+ "where o.cart_cartCode = c.cartCode and o.user_userID = u.userID and p.productCode = c.product_productCode and c.user_userID = u.userID and userID = ? ;";
			
			preparedStatement = connection.prepareStatement(query);
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
	
	public ArrayList<ADtoOPCart> detail(String DetailOrderNumber, String LoginUserID) {
		ArrayList<ADtoOPCart> dtosD = new ArrayList<ADtoOPCart>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;	
		
		try {
			connection = dataSource.getConnection();
			String queryA = "select o.orderCode, o.orderDate, o.orderAmount, o.orderSum, o.user_userID, o.cart_cartCode, p.productImages, p.productName, p.productSize, p.productPrice, c.cartAmount from aorder o, cart c, product p, userinfo u "
					+ "where o.user_userID = u.userID and o.cart_cartCode = c.cartCode and p.productCode = c.product_productCode and o.orderNumber = ? and u.userID = ? ;";
			preparedStatement = connection.prepareStatement(queryA);
			preparedStatement.setString(1, DetailOrderNumber);
			preparedStatement.setString(2, LoginUserID);
			
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
				int	orderAmount = resultSet.getInt("orderAmount");
				int	orderSum = resultSet.getInt("orderSum");
				
				int cartCode = resultSet.getInt("cart_cartCode");
				String userID = resultSet.getString("user_userID");
				
				ADtoOPCart dtoD = new ADtoOPCart(orderCode, DetailOrderNumber, orderDate, productImages, productName, productSize, productPrice, cartAmount, cartSum, orderAmount, orderSum, cartCode, userID);
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

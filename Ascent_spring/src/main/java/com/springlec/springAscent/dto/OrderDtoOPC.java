package com.springlec.springAscent.dto;

public class OrderDtoOPC {

	public OrderDtoOPC() {
		// TODO Auto-generated constructor stub
	}
	
	int orderCode;
	String orderNumber;
	String orderDate;
	String productImages;
	String productName;
	String productSize;
	int productPrice;
	int	cartAmount;
	int	cartSum;
	int orderAmount;
	int orderSum;
	
	int cart_cartCode;
	String user_userID;
	
	public OrderDtoOPC(int orderCode, String orderNumber, String orderDate, String productImages, String productName,
			String productSize, int productPrice, int cartAmount, int cartSum, int orderAmount, int orderSum,
			int cart_cartCode, String user_userID) {
		super();
		this.orderCode = orderCode;
		this.orderNumber = orderNumber;
		this.orderDate = orderDate;
		this.productImages = productImages;
		this.productName = productName;
		this.productSize = productSize;
		this.productPrice = productPrice;
		this.cartAmount = cartAmount;
		this.cartSum = cartSum;
		this.orderAmount = orderAmount;
		this.orderSum = orderSum;
		this.cart_cartCode = cart_cartCode;
		this.user_userID = user_userID;
	}
	
	public int getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}

	public int getOrderSum() {
		return orderSum;
	}

	public void setOrderSum(int orderSum) {
		this.orderSum = orderSum;
	}

	public int getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(int orderCode) {
		this.orderCode = orderCode;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getProductImages() {
		return productImages;
	}
	public void setProductImages(String productImages) {
		this.productImages = productImages;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getCartAmount() {
		return cartAmount;
	}
	public void setCartAmount(int cartAmount) {
		this.cartAmount = cartAmount;
	}
	public int getCartSum() {
		return cartSum;
	}
	public void setCartSum(int cartSum) {
		this.cartSum = cartSum;
	}
	public int getCart_cartCode() {
		return cart_cartCode;
	}
	public void setCart_cartCode(int cart_cartCode) {
		this.cart_cartCode = cart_cartCode;
	}
	public String getUser_userID() {
		return user_userID;
	}
	public void setUser_userID(String user_userID) {
		this.user_userID = user_userID;
	}
	
	
}

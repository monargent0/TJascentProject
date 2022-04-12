package com.javalec.ascent.dto;

import java.sql.Timestamp;

public class DDtoU {
	//userID userName userGender userBirth userPhone userEmail u_SignDate u_ResignDate
	String userID;
	String userName;
	String userGender;
	Timestamp userBirth; 
	String userPhone;
	String userEmail;
	Timestamp u_SignDate; 
	Timestamp u_ResignDate;
	
	public DDtoU() {
		
	}
	
	public DDtoU(String userID, String userName, String userGender, Timestamp userBirth, String userPhone,
			String userEmail, Timestamp u_SignDate, Timestamp u_ResignDate) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userGender = userGender;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.u_SignDate = u_SignDate;
		this.u_ResignDate = u_ResignDate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public Timestamp getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Timestamp userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Timestamp getU_SignDate() {
		return u_SignDate;
	}

	public void setU_SignDate(Timestamp u_SignDate) {
		this.u_SignDate = u_SignDate;
	}

	public Timestamp getU_ResignDate() {
		return u_ResignDate;
	}

	public void setU_ResignDate(Timestamp u_ResignDate) {
		this.u_ResignDate = u_ResignDate;
	}
	
	
	
	
}

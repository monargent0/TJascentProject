package com.javalec.ascent.dto;

import java.sql.Timestamp;

public class ADtoAsk {

	// Field
	
	int askCode;
	String askTitle;
	String askContent;
	Timestamp askDate;
	String a_ReplyContent;
	String a_ReplyCheck;
	
	// Constructor
	
	public ADtoAsk() {
		
	}

	public ADtoAsk(int askCode, String askTitle, String askContent, Timestamp askDate, String a_ReplyContent,
			String a_ReplyCheck) {
		super();
		this.askCode = askCode;
		this.askTitle = askTitle;
		this.askContent = askContent;
		this.askDate = askDate;
		this.a_ReplyContent = a_ReplyContent;
		this.a_ReplyCheck = a_ReplyCheck;
	}

	// Method
	
	public int getAskCode() {
		return askCode;
	}

	public void setAskCode(int askCode) {
		this.askCode = askCode;
	}

	public String getAskTitle() {
		return askTitle;
	}

	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}

	public String getAskContent() {
		return askContent;
	}

	public void setAskContent(String askContent) {
		this.askContent = askContent;
	}

	public Timestamp getAskDate() {
		return askDate;
	}

	public void setAskDate(Timestamp askDate) {
		this.askDate = askDate;
	}

	public String getA_ReplyContent() {
		return a_ReplyContent;
	}

	public void setA_ReplyContent(String a_ReplyContent) {
		this.a_ReplyContent = a_ReplyContent;
	}

	public String getA_ReplyCheck() {
		return a_ReplyCheck;
	}

	public void setA_ReplyCheck(String a_ReplyCheck) {
		this.a_ReplyCheck = a_ReplyCheck;
	}
	
}

package com.springlec.springAscent.dto;

import java.sql.Timestamp;

public class ADtoCR {
	
	// Field
	
	int replyCode;
	String c_ReplyContent;
	Timestamp replyDate;
	
	// Constructor
	public ADtoCR() {
			
	}

	public ADtoCR(int replyCode, String c_ReplyContent, Timestamp replyDate) {
		super();
		this.replyCode = replyCode;
		this.c_ReplyContent = c_ReplyContent;
		this.replyDate = replyDate;
	}

	
	// Method
	
	public int getReplyCode() {
		return replyCode;
	}

	public void setReplyCode(int replyCode) {
		this.replyCode = replyCode;
	}

	public String getReplyContent() {
		return c_ReplyContent;
	}

	public void setReplyContent(String replyContent) {
		this.c_ReplyContent = replyContent;
	}

	public Timestamp getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}


	
	
}

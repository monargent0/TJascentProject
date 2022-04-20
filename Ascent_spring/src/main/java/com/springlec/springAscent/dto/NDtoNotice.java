package com.springlec.springAscent.dto;

import java.sql.Timestamp;

public class NDtoNotice {

	private int noticeCode;
	private String noticeType;
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeDate;
	
	public NDtoNotice() {
		
	}

	public NDtoNotice(int noticeCode, String noticeType, String noticeTitle, String noticeContent,
			Timestamp noticeDate) {
		super();
		this.noticeCode = noticeCode;
		this.noticeType = noticeType;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
	}

	public int getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}

	public String getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Timestamp noticeDate) {
		this.noticeDate = noticeDate;
	}
	
	
}

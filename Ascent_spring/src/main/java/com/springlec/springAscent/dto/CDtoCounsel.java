package com.springlec.springAscent.dto;

import java.sql.Timestamp;

public class CDtoCounsel {
	
	private int counselCode;
	private String counselType;
	private String counselTitle;
	private String counselContent;
	private String counselImage;
	private Timestamp counselDate;
	private String c_ReplyCheck;
	
	public CDtoCounsel() {
		
	}

	public CDtoCounsel(int counselCode, String counselType, String counselTitle, String counselContent,
			String counselImage, Timestamp counselDate, String c_ReplyCheck) {
		super();
		this.counselCode = counselCode;
		this.counselType = counselType;
		this.counselTitle = counselTitle;
		this.counselContent = counselContent;
		this.counselImage = counselImage;
		this.counselDate = counselDate;
		this.c_ReplyCheck = c_ReplyCheck;
	}

	public int getCounselCode() {
		return counselCode;
	}

	public void setCounselCode(int counselCode) {
		this.counselCode = counselCode;
	}

	public String getCounselType() {
		return counselType;
	}

	public void setCounselType(String counselType) {
		this.counselType = counselType;
	}

	public String getCounselTitle() {
		return counselTitle;
	}

	public void setCounselTitle(String counselTitle) {
		this.counselTitle = counselTitle;
	}

	public String getCounselContent() {
		return counselContent;
	}

	public void setCounselContent(String counselContent) {
		this.counselContent = counselContent;
	}

	public String getCounselImage() {
		return counselImage;
	}

	public void setCounselImage(String counselImage) {
		this.counselImage = counselImage;
	}

	public Timestamp getCounselDate() {
		return counselDate;
	}

	public void setCounselDate(Timestamp counselDate) {
		this.counselDate = counselDate;
	}

	public String getC_ReplyCheck() {
		return c_ReplyCheck;
	}

	public void setC_ReplyCheck(String c_ReplyCheck) {
		this.c_ReplyCheck = c_ReplyCheck;
	}
		
}
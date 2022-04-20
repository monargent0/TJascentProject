package com.springlec.springAscent.dto;

public class ADtoR {

	// Field
	
	int reviewCode;
	String reviewTitle;
	String reviewContent;
	String reviewImage;
	
	// Constructor
	public ADtoR(){ 
			
	}

	// Method
	
	public ADtoR(int reviewCode, String reviewTitle, String reviewContent, String reviewImage) {
		super();
		this.reviewCode = reviewCode;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewImage = reviewImage;
	}

	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReSviewImage() {
		return reviewImage;
	}

	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	

}

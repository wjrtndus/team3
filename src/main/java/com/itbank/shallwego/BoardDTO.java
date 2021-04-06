package com.itbank.shallwego;

import java.util.Date;

public class BoardDTO {
	
	private int inquiry_idx, customer_idx, ic_idx;
	private String accomm_type; // 호텔 모텔 ...
	private String inquiry_title, inquiry_content; // 문의제목, 문의내용 
	private Date inquiry_date; // 작성날짜 
	private String Answer_check, Answer_content, Answer_writer;
	private Date Answer_date;
	
	
	
	public int getInquiry_idx() {
		return inquiry_idx;
	}
	public void setInquiry_idx(int inquiry_idx) {
		this.inquiry_idx = inquiry_idx;
	}
	public int getCustomer_idx() {
		return customer_idx;
	}
	public void setCustomer_idx(int customer_idx) {
		this.customer_idx = customer_idx;
	}
	public int getIc_idx() {
		return ic_idx;
	}
	public void setIc_idx(int ic_idx) {
		this.ic_idx = ic_idx;
	}
	public String getAccomm_type() {
		return accomm_type;
	}
	public void setAccomm_type(String accomm_type) {
		this.accomm_type = accomm_type;
	}
	public String getInquiry_title() {
		return inquiry_title;
	}
	public void setInquiry_title(String inquiry_title) {
		this.inquiry_title = inquiry_title;
	}
	public String getInquiry_content() {
		return inquiry_content;
	}
	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public String getAnswer_check() {
		return Answer_check;
	}
	public void setAnswer_check(String answer_check) {
		Answer_check = answer_check;
	}
	public String getAnswer_content() {
		return Answer_content;
	}
	public void setAnswer_content(String answer_content) {
		Answer_content = answer_content;
	}
	public String getAnswer_writer() {
		return Answer_writer;
	}
	public void setAnswer_writer(String answer_writer) {
		Answer_writer = answer_writer;
	}
	public Date getAnswer_date() {
		return Answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		Answer_date = answer_date;
	}
	
	
	

}

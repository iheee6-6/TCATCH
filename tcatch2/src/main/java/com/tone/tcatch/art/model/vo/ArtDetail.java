package com.tone.tcatch.art.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class ArtDetail extends Art {
	
	private int age; // 연령
	private String companyName; // 회사 이름
	private String companyPhone;// 회사 번호 
	private String companyInfo; // 회사 설명
	private Timestamp ticketingDate; // 티켓팅 시작 날짜
	private Date startDate; // 티켓 오픈 날짜 
	private Date endDate; // 티켓 종료 날짜

	
	public ArtDetail() {}


	

	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getCompanyPhone() {
		return companyPhone;
	}


	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}


	public String getCompanyInfo() {
		return companyInfo;
	}


	public void setCompanyInfo(String companyInfo) {
		this.companyInfo = companyInfo;
	}


	public Timestamp getTicketingDate() {
		return ticketingDate;
	}


	public void setTicketingDate(Timestamp ticketingDate) {
		this.ticketingDate = ticketingDate;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}




	@Override
	public String toString() {
		return "ArtDetail [age=" + age + ", companyName=" + companyName + ", companyPhone=" + companyPhone
				+ ", companyInfo=" + companyInfo + ", ticketingDate=" + ticketingDate + ", startDate=" + startDate
				+ ", endDate=" + endDate + "]";
	}


	
	
	
}

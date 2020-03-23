package com.tone.tcatch.art.model.vo;

public class Company {
	private int companyNo;
	private String companyName;
	private String phone;
	private String companyInfo;
	
	public Company() {}
	
	public Company(int companyNo, String companyName, String phone, String companyInfo) {
		super();
		this.companyNo = companyNo;
		this.companyName = companyName;
		this.phone = phone;
		this.companyInfo = companyInfo;
	}
	
	
	public int getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCompanyInfo() {
		return companyInfo;
	}
	public void setCompanyInfo(String companyInfo) {
		this.companyInfo = companyInfo;
	}
	@Override
	public String toString() {
		return "Company [companyNo=" + companyNo + ", companyName=" + companyName + ", phone=" + phone
				+ ", companyInfo=" + companyInfo + "]";
	}
	
	
}

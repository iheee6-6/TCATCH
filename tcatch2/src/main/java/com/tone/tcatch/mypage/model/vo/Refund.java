package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;

public class Refund {
	
	private int reNo;
	private int puNo;
	private Date r_date;
	private String userName;
	private String status;
	
	public Refund() {}

	public Refund(int reNo, int puNo, Date r_date, String userName, String status) {
		super();
		this.reNo = reNo;
		this.puNo = puNo;
		this.r_date = r_date;
		this.userName = userName;
		this.status = status;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public int getPuNo() {
		return puNo;
	}

	public void setPuNo(int puNo) {
		this.puNo = puNo;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Refund [reNo=" + reNo + ", puNo=" + puNo + ", r_date=" + r_date + ", userName=" + userName + ", status="
				+ status + "]";
	}
	
	
	

}

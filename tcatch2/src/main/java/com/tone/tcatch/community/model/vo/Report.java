package com.tone.tcatch.community.model.vo;

public class Report {
	
	private int dNo;
	private int reCno;
	private String dType;
	private String dContent;
	private String dWriter;
	private int count;
	private String status;
	
	public Report() {
		
	}

	public Report(int dNo,int reCno, String dType, String dContent, String dWriter, int count,String status) {
		super();
		this.dNo = dNo;
		this.reCno = reCno;
		this.dType = dType;
		this.dContent = dContent;
		this.dWriter = dWriter;
		this.count = count;
		this.status = status;
	}

	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}


	public int getReCno() {
		return reCno;
	}

	public void setReCno(int reCno) {
		this.reCno = reCno;
	}

	public String getdType() {
		return dType;
	}

	public void setdType(String dType) {
		this.dType = dType;
	}

	public String getdContent() {
		return dContent;
	}

	public void setdContent(String dContent) {
		this.dContent = dContent;
	}

	public String getdWriter() {
		return dWriter;
	}

	public void setdWriter(String dWriter) {
		this.dWriter = dWriter;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Report [dNo=" + dNo + ", reCno=" + reCno + ", dType=" + dType + ", dContent=" + dContent + ", dWriter="
				+ dWriter + ", count=" + count + ", status=" + status + "]";
	}


	
	
	
	

	
	
	

}

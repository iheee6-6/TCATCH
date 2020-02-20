package com.tone.tcatch.mypage.model.vo;

public class Performance {
	private int artNo; //공연번호
	private String artType; //장르
	private String artTitle;//공연명
	private String startDate; //공연 시작날
	private String endDate; //공연 마지막날
	private String address; //공연장
	
	private String originalFile; //썸네일 경로
	private String renameFile;//썸네일 변경된 이름.
	
	
	public Performance() {}


	public Performance(int artNo, String artType, String artTitle, String startDate, String endDate, String address,
			String originalFile, String renameFile) {
		super();
		this.artNo = artNo;
		this.artType = artType;
		this.artTitle = artTitle;
		this.startDate = startDate;
		this.endDate = endDate;
		this.address = address;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
	}


	public int getArtNo() {
		return artNo;
	}


	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}


	public String getArtType() {
		return artType;
	}


	public void setArtType(String artType) {
		this.artType = artType;
	}


	public String getArtTitle() {
		return artTitle;
	}


	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getOriginalFile() {
		return originalFile;
	}


	public void setOriginalFile(String originalFile) {
		this.originalFile = originalFile;
	}


	public String getRenameFile() {
		return renameFile;
	}


	public void setRenameFile(String renameFile) {
		this.renameFile = renameFile;
	}

	
	
}

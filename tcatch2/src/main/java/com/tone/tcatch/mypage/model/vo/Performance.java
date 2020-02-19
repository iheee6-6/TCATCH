package com.tone.tcatch.mypage.model.vo;

public class Performance {
	private int pNo; //공연 아이디
	private String category; //장르
	private String name;//공연명
	private String startDate; //공연 시작일시
	private String performanceDate; //공연 기간
	private String place; //공연장
	
	private String path; //썸네일 경로
	private String reName;//썸네일 변경된 이름.
	
	
	public Performance() {}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getPerformanceDate() {
		return performanceDate;
	}


	public void setPerformanceDate(String performanceDate) {
		this.performanceDate = performanceDate;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	

	public int getpNo() {
		return pNo;
	}


	public void setpNo(int pNo) {
		this.pNo = pNo;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	public String getReName() {
		return reName;
	}


	public void setReName(String reName) {
		this.reName = reName;
	}
	
}

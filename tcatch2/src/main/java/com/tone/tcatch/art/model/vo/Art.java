package com.tone.tcatch.art.model.vo;

public class Art {
	private int artNo;	//공연번호
	private int artType;//공연타입
	private String artTitle;//공연명
	private String artExplain;//공연설명
	private int count;//조회수
	private String address;//공연장소
	private int companyNo;//회사번호
	private int rating;//관람번호
	private String status;//상태(삭제)
	private int durationTime;//소요시간(분) 
	private int sale; //세일가
	private String changeName; //바뀐 파일명
	 
	public Art() {}

	

	public Art(int artNo, int artType, String artTitle, String artExplain, int count, String address, int companyNo,
			int rating, String status, int durationTime, int sale, String changeName) {
		super();
		this.artNo = artNo;
		this.artType = artType;
		this.artTitle = artTitle;
		this.artExplain = artExplain;
		this.count = count;
		this.address = address;
		this.companyNo = companyNo;
		this.rating = rating;
		this.status = status;
		this.durationTime = durationTime;
		this.sale = sale;
		this.changeName = changeName;
	}

	

	public String getChangeName() {
		return changeName;
	}



	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}



	public int getArtNo() {
		return artNo;
	}

	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}

	public int getArtType() {
		return artType;
	}

	public void setArtType(int artType) {
		this.artType = artType;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}

	public String getArtExplain() {
		return artExplain;
	}

	public void setArtExplain(String artExplain) {
		this.artExplain = artExplain;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getDurationTime() {
		return durationTime;
	}

	public void setDurationTime(int durationTime) {
		this.durationTime = durationTime;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	@Override
	public String toString() {
		return "Art [artNo=" + artNo + ", artType=" + artType + ", artTitle=" + artTitle + ", artExplain=" + artExplain
				+ ", count=" + count + ", address=" + address + ", companyNo=" + companyNo + ", rating=" + rating
				+ ", status=" + status + ", durationTime=" + durationTime + ", sale=" + sale + "]";
	}
	
	
}

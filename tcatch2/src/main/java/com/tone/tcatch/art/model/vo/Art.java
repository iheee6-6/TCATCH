package com.tone.tcatch.art.model.vo;

public class Art {
	private int artNo;	//공연번호
	private int artType;//공연타입 : 0전시 , 1콘서트 , 2 뮤지컬 , 3연극
	private String artTitle;//제목
	private String artExplain;//내용 
	private int count;//조회수
	private String address;//주소
	private int companyNo;//회사번호
	private int rating;// 관람등급
	private String status;//상태 
	private int durationTime;//소요시간 
	private int sale; //할인률
	private String changeName; //사진이름
	private int replyCount; //댓글 수 
	private int jjimCount; //찜수 
	 
	public Art() {}

	public Art(int artNo, int artType, String artTitle, String artExplain, int count, String address, int companyNo,
			int rating, String status, int durationTime, int sale, String changeName, int replyCount , int jjimCount) {
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
		this.replyCount = replyCount;
		this.jjimCount = jjimCount;
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

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public int getJjimCount() {
		return jjimCount;
	}

	public void setJjimCount(int jjimCount) {
		this.jjimCount = jjimCount;
	}

	@Override
	public String toString() {
		return "Art [artNo=" + artNo + ", artType=" + artType + ", artTitle=" + artTitle + ", artExplain=" + artExplain
				+ ", count=" + count + ", address=" + address + ", companyNo=" + companyNo + ", rating=" + rating
				+ ", status=" + status + ", durationTime=" + durationTime + ", sale=" + sale + ", changeName="
				+ changeName + ", replyCount=" + replyCount + ", jjimCount=" + jjimCount + "]";
	}
	
	

	
}

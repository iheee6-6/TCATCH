package com.tone.tcatch.art.model.vo;

import java.sql.Date;

public class Purchase {
	private int purchaseNo; //예매 번호
	private int mNo; //회원번호
	private String seatName; //좌석 이름
	private int seatSal; //가격
	private int type; //수령 방법
	private Date buyDate; //예매 날짜
	private int purchaseCount; //매수
	private int waybillNumber; //운송장 번호
	private int timeNo; //회차번호 
	private int artNo; // 공연번호
	
	public Purchase() {}

	public Purchase(int purchaseNo, int mNo, String seatName, int seatSal, int type, Date buyDate, int purchaseCount,
			int waybillNumber, int timeNo, int artNo) {
		super();
		this.purchaseNo = purchaseNo;
		this.mNo = mNo;
		this.seatName = seatName;
		this.seatSal = seatSal;
		this.type = type;
		this.buyDate = buyDate;
		this.purchaseCount = purchaseCount;
		this.waybillNumber = waybillNumber;
		this.timeNo = timeNo;
		this.artNo = artNo;
	}
	
	
	

	public Purchase(int mNo, String seatName, int seatSal, int type, Date buyDate, int purchaseCount, int waybillNumber,
			int timeNo, int artNo) {
		super();
		this.mNo = mNo;
		this.seatName = seatName;
		this.seatSal = seatSal;
		this.type = type;
		this.buyDate = buyDate;
		this.purchaseCount = purchaseCount;
		this.waybillNumber = waybillNumber;
		this.timeNo = timeNo;
		this.artNo = artNo;
	}

	public int getPurchaseNo() {
		return purchaseNo;
	}

	public void setPurchaseNo(int purchaseNo) {
		this.purchaseNo = purchaseNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getSeatName() {
		return seatName;
	}

	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}

	public int getSeatSal() {
		return seatSal;
	}

	public void setSeatSal(int seatSal) {
		this.seatSal = seatSal;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public int getPurchaseCount() {
		return purchaseCount;
	}

	public void setPurchaseCount(int purchaseCount) {
		this.purchaseCount = purchaseCount;
	}

	public int getWaybillNumber() {
		return waybillNumber;
	}

	public void setWaybillNumber(int waybillNumber) {
		this.waybillNumber = waybillNumber;
	}

	public int getTimeNo() {
		return timeNo;
	}

	public void setTimeNo(int timeNo) {
		this.timeNo = timeNo;
	}

	public int getArtNo() {
		return artNo;
	}

	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}

	@Override
	public String toString() {
		return "Purchase [purchaseNo=" + purchaseNo + ", mNo=" + mNo + ", seatName=" + seatName + ", seatSal=" + seatSal
				+ ", type=" + type + ", buyDate=" + buyDate + ", purchaseCount=" + purchaseCount + ", waybillNumber="
				+ waybillNumber + ", timeNo=" + timeNo + ", artNo=" + artNo + "]";
	}
	
	
	
}

package com.tone.tcatch.art.model.vo;

import java.sql.Date;

public class Purchase {
	private int purchaseNo; //���� ��ȣ
	private int mNo; //ȸ����ȣ
	private String seatName; //�¼� �̸�
	private int seatSal; //����
	private int type; //���� ���
	private Date buyDate; //���� ��¥
	private int purchaseCount; //�ż�
	private String waybillNumber; //����� ��ȣ
	private int timeNo; //ȸ����ȣ 
	private int artNo; // ������ȣ
	
	public Purchase() {}

	public Purchase(int purchaseNo, int mNo, String seatName, int seatSal, int type, Date buyDate, int purchaseCount,
			String waybillNumber, int timeNo, int artNo) {
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
	
	
	

	public Purchase(int mNo, String seatName, int seatSal, int type, Date buyDate, int purchaseCount, String waybillNumber,
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

	public String getWaybillNumber() {
		return waybillNumber;
	}

	public void setWaybillNumber(String waybillNumber) {
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

package com.tone.tcatch.art.model.vo;

public class Seat {
	private String seatName;
	private int timeNo;
	private String status;
	private String price;
	
	public Seat() {}
	
	public Seat(String seatName, int timeNo, String status, String price) {
		super();
		this.seatName = seatName;
		this.timeNo = timeNo;
		this.status = status;
		this.price = price;
	}
	
	public String getSeatName() {
		return seatName;
	}
	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	public int getTimeNo() {
		return timeNo;
	}
	public void setTimeNo(int timeNo) {
		this.timeNo = timeNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Seat [seatName=" + seatName + ", timeNo=" + timeNo + ", status=" + status + ", price=" + price + "]";
	}
	
	

}

package com.tone.tcatch.art.model.vo;

public class Seat {
	private String seatName;
	private int timeNo;
	private int artNo;
	private String status;
	private String price;
	
	public Seat() {}

	public Seat(String seatName, int timeNo, int artNo, String status, String price) {
		super();
		this.seatName = seatName;
		this.timeNo = timeNo;
		this.artNo = artNo;
		this.status = status;
		this.price = price;
	}
	
	public Seat(String seatName, int timeNo, int artNo) {
		super();
		this.seatName = seatName;
		this.timeNo = timeNo;
		this.artNo = artNo;
	}

	public Seat(int timeNo, int artNo) {
		super();
		this.timeNo = timeNo;
		this.artNo = artNo;
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

	public int getArtNo() {
		return artNo;
	}

	public void setArtNo(int artNo) {
		this.artNo = artNo;
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
		return "Seat [seatName=" + seatName + ", timeNo=" + timeNo + ", artNo=" + artNo + ", status=" + status
				+ ", price=" + price + "]";
	}
	
	

}

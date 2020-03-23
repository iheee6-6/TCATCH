package com.tone.tcatch.art.model.vo;

public class TicketDate {
	private int artNo;
	private String ticketingDate;
	private String startDate;
	private String endDate;
	
	public TicketDate() {}
	
	public TicketDate(int artNo, String ticketingDate, String startDate, String endDate) {
		super();
		this.artNo = artNo;
		this.ticketingDate = ticketingDate;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	
	
	
	
	public TicketDate(String ticketingDate, String startDate, String endDate) {
		super();
		this.ticketingDate = ticketingDate;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getArtNo() {
		return artNo;
	}
	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}
	public String getTicketingDate() {
		return ticketingDate;
	}
	public void setTicketingDate(String ticketingDate) {
		this.ticketingDate = ticketingDate;
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
	@Override
	public String toString() {
		return "TicketDate [artNo=" + artNo + ", ticketingDate=" + ticketingDate + ", startDate=" + startDate + ", endDate="
				+ endDate + "]";
	}
	
	
}

package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;

public class Alarm {
	private int artNo; //공연 번호
	private String artTitle; //공연명
	private Date ticketingDate; //티켓팅 일시
	private Date alarmDate; //알림날짜
	private Date enrollDate; //등록날짜
	private int alarmNo; //알림 번호
	
	public Alarm() {}

	
	public Date getTicketingDate() {
		return ticketingDate;
	}


	public void setTicketingDate(Date ticketingDate) {
		this.ticketingDate = ticketingDate;
	}


	public int getArtNo() {
		return artNo;
	}

	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}

	public Date getAlarmDate() {
		return alarmDate;
	}

	public void setAlarmDate(Date alarmDate) {
		this.alarmDate = alarmDate;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getAlarmNo() {
		return alarmNo;
	}

	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}

	@Override
	public String toString() {
		return "Alarm [artNo=" + artNo + ", artTitle=" + artTitle + ", alarmDate=" + alarmDate + ", enrollDate="
				+ enrollDate + ", alarmNo=" + alarmNo + ", ticketingDate="+ticketingDate+"]";
	}
	
	
}

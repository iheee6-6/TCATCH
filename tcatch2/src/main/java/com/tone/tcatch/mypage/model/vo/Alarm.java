package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;

public class Alarm {
	private int pNo; //공연 번호
	private String pName; //공연명
	private Date alarmDate; //알림날짜
	private Date enrollDate; //등록날짜
	private int alarmNo; //알림 번호
	
	public Alarm() {}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
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

	
	
	
	
	
}

package com.tone.tcatch.mypage.model.vo;

public class Alarm {
	private int performanceNo;
	private String performanceName;
	private String userId;
	private String alarmDate;
	private String enrollDate;
	private int alarmNo; //알림 번호
	
	public Alarm() {}

	public int getPerformanceId() {
		return performanceNo;
	}

	public void setPerformanceId(int performanceId) {
		this.performanceNo = performanceId;
	}

	public String getPerformanceName() {
		return performanceName;
	}

	public void setPerformanceName(String performanceName) {
		this.performanceName = performanceName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAlarmDate() {
		return alarmDate;
	}

	public void setAlarmDate(String alarmDate) {
		this.alarmDate = alarmDate;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Alarm(int performanceNo, String performanceName, String userId, String alarmDate, String enrollDate) {
		super();
		this.performanceNo = performanceNo;
		this.performanceName = performanceName;
		this.userId = userId;
		this.alarmDate = alarmDate;
		this.enrollDate = enrollDate;
	}
	
	
	
	
}

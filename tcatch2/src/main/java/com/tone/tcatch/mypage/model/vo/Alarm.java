package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

import com.tone.tcatch.art.model.vo.ArtDetail;

public class Alarm extends ArtDetail{
	/*private int artNo; //공연 번호
	private String artTitle; //공연명
	private Timestamp ticketingDate; //티켓팅 일시
*/	private Timestamp alarmDate; //알림날짜
	private Date enrollDate; //등록날짜
	private int alarmNo; //알림 번호
	
	public Alarm() {}

	public Timestamp getAlarmDate() {
		return alarmDate;
	}

	public void setAlarmDate(Timestamp alarmDate) {
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
		return "Alarm [alarmDate=" + alarmDate + ", enrollDate=" + enrollDate + ", alarmNo=" + alarmNo + "]";
	}

	

	
	
}

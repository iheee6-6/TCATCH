package com.tone.tcatch.art.model.vo;

import java.util.Date;

public class ArtTime {

	private int timeNo;
	private String actor;
	private String dateTime;
	private int dateCount;
	private int artNo;
	
	public ArtTime() {}

	public ArtTime(int timeNo, String actor, String dateTime, int dateCount, int artNo) {
		super();
		this.timeNo = timeNo;
		this.actor = actor;
		this.dateTime = dateTime;
		this.dateCount = dateCount;
		this.artNo = artNo;
	}

	public ArtTime(String actor, String dateTime, int dateCount) {
		super();
		this.actor = actor;
		this.dateTime = dateTime;
		this.dateCount = dateCount;
	}
	

	public ArtTime(String actor, int dateCount) {
		super();
		this.actor = actor;
		this.dateCount = dateCount;
	}

	public int getTimeNo() {
		return timeNo;
	}

	public void setTimeNo(int timeNo) {
		this.timeNo = timeNo;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public int getDateCount() {
		return dateCount;
	}

	public void setDateCount(int dateCount) {
		this.dateCount = dateCount;
	}

	public int getArtNo() {
		return artNo;
	}

	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}

	@Override
	public String toString() {
		return "ArtTime [timeNo=" + timeNo + ", actor=" + actor + ", dateTime=" + dateTime + ", dateCount=" + dateCount
				+ ", artNo=" + artNo + "]";
	}
	
}

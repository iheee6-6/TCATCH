package com.tone.tcatch.art.model.vo;

import java.sql.Date;

public class ArtTime {
/*
 * 		<id property="timeNo" column="TIME_NO"/>
		<result property="actor" column="ACTOR"/>
		<result property="dateTime" column="DATE_TIME"/>
		<result property="dateCount" column="DATE_COUNT"/>	
		<result property="artNo" column="ART_NO"/>	
 * */
	private int timeNo;
	private String actor;
	private Date dateTime;
	private int dateCount;
	private int artNo;
	
	public ArtTime() {}
	
	public ArtTime(int timeNo, String actor, Date dateTime, int dateCount, int artNo) {
		super();
		this.timeNo = timeNo;
		this.actor = actor;
		this.dateTime = dateTime;
		this.dateCount = dateCount;
		this.artNo = artNo;
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

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
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

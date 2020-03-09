package com.tone.tcatch.art.model.vo;

import java.sql.Date;

public class Img {
	private int imgNo;
	private int artNo;
	private String originName;
	private String changeName;
	private String filePath;
	private Date changeDate;
	private int fileLevel;
	
	public Img() {}
	
	public Img(int imgNo, int artNo, String originName, String changeName, String filePath, Date changeDate,
			int fileLevel) {
		super();
		this.imgNo = imgNo;
		this.artNo = artNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.changeDate = changeDate;
		this.fileLevel = fileLevel;
	}
	
	
	
	public int getImgNo() {
		return imgNo;
	}



	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}



	public int getArtNo() {
		return artNo;
	}



	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}



	public String getOriginName() {
		return originName;
	}



	public void setOriginName(String originName) {
		this.originName = originName;
	}



	public String getChangeName() {
		return changeName;
	}



	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}



	public String getFilePath() {
		return filePath;
	}



	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}



	public Date getChangeDate() {
		return changeDate;
	}



	public void setChangeDate(Date changeDate) {
		this.changeDate = changeDate;
	}



	public int getFileLevel() {
		return fileLevel;
	}



	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}



	@Override
	public String toString() {
		return "Img [imgNo=" + imgNo + ", artNo=" + artNo + ", originName=" + originName + ", changeName=" + changeName
				+ ", filePath=" + filePath + ", changeDate=" + changeDate + ", fileLevel=" + fileLevel + "]";
	}
	
	
	
}

package com.tone.tcatch.community.model.vo;

import java.sql.Date;

public class Community {
	private int cNo;
	private int mNo;
	private String cWriter;
	private String cTitle;
	private String cContent;
	private Date writeDate;
	private Date modifyDate;
	private String status;
	private int count;
	
	public Community() {}

	public Community(int cNo, int mNo, String cWriter, String cTitle, String cContent, Date writeDate, Date modifyDate,
			String status, int count) {
		super();
		this.cNo = cNo;
		this.mNo = mNo;
		this.cWriter = cWriter;
		this.cTitle = cTitle;
		this.cContent = cContent;
		this.writeDate = writeDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.count = count;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getcWriter() {
		return cWriter;
	}

	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}

	public String getcTitle() {
		return cTitle;
	}

	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Community [cNo=" + cNo + ", mNo=" + mNo + ", cWriter=" + cWriter + ", cTitle=" + cTitle + ", cContent="
				+ cContent + ", writeDate=" + writeDate + ", modifyDate=" + modifyDate + ", status=" + status
				+ ", count=" + count + "]";
	}
	
	

}

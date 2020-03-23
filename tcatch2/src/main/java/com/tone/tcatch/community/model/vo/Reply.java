package com.tone.tcatch.community.model.vo;

import java.util.Date;

public class Reply {
	private int rId;
	private String rContent;
	private int refCno;
	private int refAno;
	private String rWriter;
	private Date rCreateDate;
	private Date rModifyDate;
	private int star;
	private String rStatus;
	
	public Reply() {}

	public Reply(int rId, String rContent, int refCno, int refAno , String rWriter, Date rCreateDate, Date rModifyDate,
			String rStatus) {
		super();
		this.rId = rId;
		this.rContent = rContent;
		this.refCno = refCno;
		this.refAno = refAno;
		this.rWriter = rWriter;
		this.rCreateDate = rCreateDate;
		this.rModifyDate = rModifyDate;
		this.rStatus = rStatus;
	}

	
	public int getRefAno() {
		return refAno;
	}

	public void setRefAno(int refAno) {
		this.refAno = refAno;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getRefCno() {
		return refCno;
	}

	public void setRefCno(int refCno) {
		this.refCno = refCno;
	}

	public String getrWriter() {
		return rWriter;
	}

	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}

	public Date getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public Date getrModifyDate() {
		return rModifyDate;
	}

	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}

	public String getrStatus() {
		return rStatus;
	}

	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", rContent=" + rContent + ", refCno=" + refCno + ", rWriter=" + rWriter
				+ ", rCreateDate=" + rCreateDate + ", rModifyDate=" + rModifyDate + ", rStatus=" + rStatus + "]";
	}

	
	
	
}

package com.tone.tcatch.ticket.model.vo;

import java.sql.Date;

public class Ticket {
	private String userName; //예매자 이름
	private String userNo; //회원번호
	private String tNo; //예매번호
	private Date tDate; //예매일
	private int artNo; //공연번호
	private String artTitle;  //공연명
	private String artType; //장르
	private int ticketCount; //매수
	private int timeNo; //회차번호
	private String dateCount; //회차수
	private Date viewDate; //관람일
	private String address; //공연장 
	private String seat; //좌석
	private String receiveMethod; //티켓 수령 방법
	private String originalFile; //썸네일 경로
	private String renameFile;//썸네일 변경된 이름.
	
	private	int price; //결제금액
	
	private String status; //예매상태 //refund번호랑 관리자 승인에 따른 
	
	private int refundNo; //환불 번호
	private Date refundEnrollDate; //환불 신청 날짜 
	private String refundStatus; //환불 승인여부
	
	private int wayBill; //운송장 번호
	
	private Date cancelDeadline; //취소마감시간 //
	
	private boolean reviewStatus; //리뷰 작성 여부 확인 //

	
	public Ticket() {}


	public Ticket(String tNo, String artTitle, Date viewDate, int ticketCount, int artNo,
			String address, String seat, String originalFile, String renameFile, boolean reviewStatus,String artType) {
		super();
		this.tNo = tNo;
		this.artTitle = artTitle;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.artNo = artNo;
		this.address = address;
		this.seat = seat;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.reviewStatus = reviewStatus;
		this.artType = artType;
	}


	public Ticket(String tNo, String artTitle, Date viewDate, int artNo, String originalFile, String renameFile,
			boolean reviewStatus) {
		super();
		this.tNo = tNo;
		this.artTitle = artTitle;
		this.viewDate = viewDate;
		this.artNo = artNo;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.reviewStatus = reviewStatus;
	}


	public Ticket(String tNo, Date tDate, String artTitle, Date viewDate, int ticketCount, int artNo,
			String status, String userName, String address, String seat, String receiveMethod, String originalFile, String renameFile,
			int price, Date cancelDeadline) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.artTitle = artTitle;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.artNo = artNo;
		this.status = status;
		this.userName = userName;
		this.address = address;
		this.seat = seat;
		this.receiveMethod = receiveMethod;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.price = price;
		this.cancelDeadline = cancelDeadline;
	}


	public Ticket(String tNo, Date tDate, String artTitle, Date viewDate, int ticketCount, int artNo,
			String status) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.artTitle = artTitle;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.artNo = artNo;
		this.status = status;
	}


	public Ticket(String tNo, Date tDate, String artTitle, Date viewDate, int ticketCount, int artNo,
			String status, String userName, String address, String seat, String receiveMethod, String originalFile, String renameFile,
			int price, Date cancelDeadline, boolean reviewStatus) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.artTitle = artTitle;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.artNo = artNo;
		this.status = status;
		this.userName = userName;
		this.address = address;
		this.seat = seat;
		this.receiveMethod = receiveMethod;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.price = price;
		this.cancelDeadline = cancelDeadline;
		this.reviewStatus = reviewStatus;
	}


	public String getUserNo() {
		return userNo;
	}


	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}


	public int getTimeNo() {
		return timeNo;
	}


	public void setTimeNo(int timeNo) {
		this.timeNo = timeNo;
	}


	public String getDateCount() {
		return dateCount;
	}


	public void setDateCount(String dateCount) {
		this.dateCount = dateCount;
	}


	public int getRefundNo() {
		return refundNo;
	}


	public void setRefundNo(int refundNo) {
		this.refundNo = refundNo;
	}


	public Date getRefundEnrollDate() {
		return refundEnrollDate;
	}


	public void setRefundEnrollDate(Date refundEnrollDate) {
		this.refundEnrollDate = refundEnrollDate;
	}


	public String getRefundStatus() {
		return refundStatus;
	}


	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}


	public int getArtNo() {
		return artNo;
	}


	public String gettNo() {
		return tNo;
	}


	public void settNo(String tNo) {
		this.tNo = tNo;
	}


	public Date gettDate() {
		return tDate;
	}


	public void settDate(Date tDate) {
		this.tDate = tDate;
	}


	public String getArtTitle() {
		return artTitle;
	}


	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}


	public Date getViewDate() {
		return viewDate;
	}


	public void setViewDate(Date viewDate) {
		this.viewDate = viewDate;
	}


	public int getTicketCount() {
		return ticketCount;
	}


	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
	}


	public int getArtNoo() {
		return artNo;
	}


	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getSeat() {
		return seat;
	}


	public void setSeat(String seat) {
		this.seat = seat;
	}


	public String getReceiveMethod() {
		return receiveMethod;
	}


	public void setReceiveMethod(String receiveMethod) {
		this.receiveMethod = receiveMethod;
	}

	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public Date getCancelDeadline() {
		return cancelDeadline;
	}


	public void setCancelDeadline(Date cancelDeadline) {
		this.cancelDeadline = cancelDeadline;
	}


	public boolean isReviewStatus() {
		return reviewStatus;
	}


	public void setReviewStatus(boolean reviewStatus) {
		this.reviewStatus = reviewStatus;
	}


	public String getArtType() {
		return artType;
	}


	public void setArtType(String artType) {
		this.artType = artType;
	}

	public String getOriginalFile() {
		return originalFile;
	}


	public void setOriginalFile(String originalFile) {
		this.originalFile = originalFile;
	}


	public String getRenameFile() {
		return renameFile;
	}


	public void setRenameFile(String renameFile) {
		this.renameFile = renameFile;
	}


	public int getWayBill() {
		return wayBill;
	}


	public void setWayBill(int wayBill) {
		this.wayBill = wayBill;
	}
	
	
}

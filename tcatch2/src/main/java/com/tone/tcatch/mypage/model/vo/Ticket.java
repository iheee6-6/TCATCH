package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;

public class Ticket {
	private String tNo; //예매번호
	private Date tDate; //예매일
	private String performanceName;  //공연명
	private Date viewDate; //관람일
	private int ticketCount; //매수
	private int performanceId; //공연 아이디
	private String status; //예매상태 //refund번호
	
	private int wayBill; //운송장 번호
	
	///////////////////////////////////
	private String userName; //예매자
	private String place; //공연장 
	private String seat; //좌석
	private String receiveMethod; //티켓 수령 방법
	
	private String path; //썸네일 경로
	private String reName;//썸네일 변경된 이름.
	
	////////////////////////////////
	private	int price; //결제금액
	private Date cancelDeadline; //취소마감시간 //
	
	////////////////////////////////
	private boolean reviewStatus; //리뷰 작성 여부 확인 //
	private String category; //장르
	
	public Ticket() {}


	public Ticket(String tNo, String performanceName, Date viewDate, int ticketCount, int performanceId,
			String place, String seat, String path, String reName, boolean reviewStatus,String category) {
		super();
		this.tNo = tNo;
		this.performanceName = performanceName;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.performanceId = performanceId;
		this.place = place;
		this.seat = seat;
		this.path = path;
		this.reName = reName;
		this.reviewStatus = reviewStatus;
		this.category = category;
	}


	public Ticket(String tNo, String performanceName, Date viewDate, int performanceId, String path, String reName,
			boolean reviewStatus) {
		super();
		this.tNo = tNo;
		this.performanceName = performanceName;
		this.viewDate = viewDate;
		this.performanceId = performanceId;
		this.path = path;
		this.reName = reName;
		this.reviewStatus = reviewStatus;
	}


	public Ticket(String tNo, Date tDate, String performanceName, Date viewDate, int ticketCount, int performanceId,
			String status, String userName, String place, String seat, String receiveMethod, String path, String reName,
			int price, Date cancelDeadline) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.performanceName = performanceName;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.performanceId = performanceId;
		this.status = status;
		this.userName = userName;
		this.place = place;
		this.seat = seat;
		this.receiveMethod = receiveMethod;
		this.path = path;
		this.reName = reName;
		this.price = price;
		this.cancelDeadline = cancelDeadline;
	}


	public Ticket(String tNo, Date tDate, String performanceName, Date viewDate, int ticketCount, int performanceId,
			String status) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.performanceName = performanceName;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.performanceId = performanceId;
		this.status = status;
	}


	public Ticket(String tNo, Date tDate, String performanceName, Date viewDate, int ticketCount, int performanceId,
			String status, String userName, String place, String seat, String receiveMethod, String path, String reName,
			int price, Date cancelDeadline, boolean reviewStatus) {
		super();
		this.tNo = tNo;
		this.tDate = tDate;
		this.performanceName = performanceName;
		this.viewDate = viewDate;
		this.ticketCount = ticketCount;
		this.performanceId = performanceId;
		this.status = status;
		this.userName = userName;
		this.place = place;
		this.seat = seat;
		this.receiveMethod = receiveMethod;
		this.path = path;
		this.reName = reName;
		this.price = price;
		this.cancelDeadline = cancelDeadline;
		this.reviewStatus = reviewStatus;
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


	public String getPerformanceName() {
		return performanceName;
	}


	public void setPerformanceName(String performanceName) {
		this.performanceName = performanceName;
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


	public int getPerformanceId() {
		return performanceId;
	}


	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
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


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
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


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	public String getReName() {
		return reName;
	}


	public void setReName(String reName) {
		this.reName = reName;
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


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "Ticket [tNo=" + tNo + ", tDate=" + tDate + ", performanceName=" + performanceName + ", viewDate="
				+ viewDate + ", ticketCount=" + ticketCount + ", performanceId=" + performanceId + ", status=" + status
				+ ", userName=" + userName + ", place=" + place + ", seat=" + seat + ", receiveMethod=" + receiveMethod
				+ ", path=" + path + ", reName=" + reName + ", price=" + price + ", cancelDeadline=" + cancelDeadline
				+ ", reviewStatus=" + reviewStatus + ", category=" + category + "]";
	}
	
	
}

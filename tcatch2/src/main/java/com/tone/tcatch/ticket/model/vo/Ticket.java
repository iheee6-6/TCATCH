package com.tone.tcatch.ticket.model.vo;

import java.sql.Timestamp;

import com.tone.tcatch.art.model.vo.Art;

public class Ticket extends Art{
	private String userName; //예매자 이름
	private String userNo; //회원번호
	private String tNo; //예매번호
	private Timestamp tDate; //예매일
	private int ticketCount; //매수
	private int timeNo; //회차번호
	private String dateCount; //회차수
	private Timestamp viewDate; //관람일
	private String seat; //좌석
	private String receiveMethod; //티켓 수령 방법
	private String originalFile; //썸네일 경로
	private String renameFile;//썸네일 변경된 이름.
	
	private String userAddress; //예매자 주소
	
	private	int price; //결제금액
	
	private String status; //예매상태 //refund번호랑 관리자 승인에 따른 
	
	private int refundNo; //환불 번호
	private Timestamp refundEnrollDate; //환불 신청 날짜 
	private String refundStatus; //환불 승인여부
	
	private String wayBill; //운송장 번호
	
	
	private String review_no; //리뷰 작성 여부 확인 //
	private String review_content; //리뷰 내용
	
	public Ticket() {}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String gettNo() {
		return tNo;
	}

	public void settNo(String tNo) {
		this.tNo = tNo;
	}

	public Timestamp gettDate() {
		return tDate;
	}

	public void settDate(Timestamp tDate) {
		this.tDate = tDate;
	}

	public int getTicketCount() {
		return ticketCount;
	}

	public void setTicketCount(int ticketCount) {
		this.ticketCount = ticketCount;
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

	public Timestamp getViewDate() {
		return viewDate;
	}

	public void setViewDate(Timestamp viewDate) {
		this.viewDate = viewDate;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getRefundNo() {
		return refundNo;
	}

	public void setRefundNo(int refundNo) {
		this.refundNo = refundNo;
	}

	public Timestamp getRefundEnrollDate() {
		return refundEnrollDate;
	}

	public void setRefundEnrollDate(Timestamp refundEnrollDate) {
		this.refundEnrollDate = refundEnrollDate;
	}

	public String getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}

	public String getWayBill() {
		return wayBill;
	}

	public void setWayBill(String wayBill) {
		this.wayBill = wayBill;
	}

	public String getReview_no() {
		return review_no;
	}

	public void setReview_no(String review_no) {
		this.review_no = review_no;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	@Override
	public String toString() {
		return "Ticket [userName=" + userName + ", userNo=" + userNo + ", tNo=" + tNo + ", tDate=" + tDate
				+ ", ticketCount=" + ticketCount + ", timeNo=" + timeNo + ", dateCount=" + dateCount + ", viewDate="
				+ viewDate + ", seat=" + seat + ", receiveMethod=" + receiveMethod + ", originalFile=" + originalFile
				+ ", renameFile=" + renameFile + ", userAddress=" + userAddress + ", price=" + price + ", status="
				+ status + ", refundNo=" + refundNo + ", refundEnrollDate=" + refundEnrollDate + ", refundStatus="
				+ refundStatus + ", wayBill=" + wayBill + ", review_no=" + review_no + ", review_content="
				+ review_content + "]";
	}

	

	
}

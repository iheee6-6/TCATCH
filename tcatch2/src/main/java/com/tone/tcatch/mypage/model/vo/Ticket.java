package com.tone.tcatch.mypage.model.vo;

import java.sql.Date;

public class Ticket {
	private String pNo; //예매번호
	private Date pDate; //예매일
	private String performanceName;  //공연명
	private Date viewDate; //관람일
	private int ticketCount; //매수
	private String performanceId; //공연 아이디
	
	///////////////////////////////////
	private String userName; //예매자
	private String place; //공연장 
	private String seat; //좌석
	private String receiveMethod; //티켓 수령 방법
	
	private String path; //썸네일 경로
	private String reName;//썸네일 변경된 이름.
	////////////////////////////////
	private	int price; //결제금액
	private Date cancelDeadline; //취소마감시간
	
	////////////////////////////////
	private boolean reviewStatus; //리뷰 작성 여부 확인
	
}

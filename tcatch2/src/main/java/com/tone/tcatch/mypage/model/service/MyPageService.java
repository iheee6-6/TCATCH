package com.tone.tcatch.mypage.model.service;

import java.sql.Date;
import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.ticket.model.vo.Ticket;

public interface MyPageService {

	
	int deleteMember(String id);

	int updateMember(Member m);

	ArrayList<Ticket> selectRecentHistoryList(String id);

	ArrayList<Ticket> selectRecentViewList(String id);

	ArrayList<ArtDetail> selectRecentInterestList(String id);

	ArrayList<ArtDetail> selectInterestPerformanceList(String id);

	ArrayList<Alarm> selectAlarmList(String id);

	int deleteAlarm(String id, String string);

	int deleteInterest(String id, String string);

	Ticket selectTicketDetail(String id, int tNo);

	ArrayList<Ticket> selectTicketList(String id, int currentPage);

	ArrayList<Ticket> selectViewPerformanceList(String id);

	int insertInterest(String id, int pId);

	int insertAlarm(String id, int aId);

	ArrayList<Ticket> searchView(String id, Date sdate, Date edate, String artType, String pName);

	ArrayList<ArtDetail> selectNoticeList(int currentPage);

	Art selectNotice(int nId);

	int refundTicket(String id, int tId);

	ArrayList<Art> confirmTicketingTime(Date d);

	ArrayList<Member> selectAlarmMember(Art art);

	String selectAView(String id);

	ArrayList<Img> selectNImgList(ArrayList<Integer> list);

}

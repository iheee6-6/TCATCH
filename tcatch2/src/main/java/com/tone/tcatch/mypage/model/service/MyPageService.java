package com.tone.tcatch.mypage.model.service;

import java.sql.Date;
import java.sql.Timestamp;
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

	ArrayList<Alarm> selectRecentInterestList(String id);

	ArrayList<Alarm> selectInterestPerformanceList(String id);

	ArrayList<Alarm> selectAlarmList(String id);

	int deleteAlarm(String id, String string);

	int deleteInterest(String id, String string);

	Ticket selectTicketDetail(String id, int tNo);

	ArrayList<Ticket> selectTicketList(String id, int currentPage);

	int insertInterest(String id, int pId);

	int insertAlarm(String id, int aId);

	ArrayList<Ticket> searchView(String id, String sdate, String edate, String artType, String pName, int currentPage);

	ArrayList<ArtDetail> selectNoticeList(int currentPage);

	ArtDetail selectNotice(int artNo);

	int refundTicket(String id, int tNo);

	ArrayList<Alarm> confirmTicketingTime(Timestamp d);

	ArrayList<Member> selectAlarmMember(int i);

	String selectAView(String id);

	ArrayList<Img> selectImgList(ArrayList<Integer> list);

	Img selectImgOne(int artNo);

	int selectAlarmUser(String id, int aNo);

	int selectvCount(String id);


}

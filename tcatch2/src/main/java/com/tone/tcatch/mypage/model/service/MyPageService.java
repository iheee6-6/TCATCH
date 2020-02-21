package com.tone.tcatch.mypage.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.ArtDetail;
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

	ArrayList<Ticket> selectTicketList(String id);

	ArrayList<Ticket> selectViewPerformanceList(String id);

	int insertInterest(String id, int pId);

	int insertAlarm(String id, int aId);

}

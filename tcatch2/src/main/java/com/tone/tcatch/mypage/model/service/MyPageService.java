package com.tone.tcatch.mypage.model.service;

import java.util.ArrayList;

import com.tone.tcatch.attachment.vo.Attachment;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.mypage.model.vo.Ticket;

public interface MyPageService {

	int deleteMember(String id);

	int updateMember(Member m);

	ArrayList<Ticket> selectRecentHistoryList(String id);

	ArrayList<Ticket> selectRecentViewList(String id);

	ArrayList<Performance> selectRecentInterestList(String id);

	Attachment selectPathRename(int i);

	ArrayList<Performance> selectInterestPerformanceList(String id);

	ArrayList<Alarm> selectAlarmList(String id);

}

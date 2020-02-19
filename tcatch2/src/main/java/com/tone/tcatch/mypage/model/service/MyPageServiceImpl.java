package com.tone.tcatch.mypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.attachment.vo.Attachment;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.dao.MyPageDao;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.mypage.model.vo.Ticket;

@Service("mpService")
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	MyPageDao mpDao;
	
	@Override
	public ArrayList<Alarm> selectAlarmList(String userId){
		return mpDao.selectAlarmList(userId);
	}
	
	@Override
	public int deleteMember(String id) {
		return mpDao.deleteMember(id);
	}

	@Override
	public int updateMember(Member m) {
		return mpDao.updateMember(m);
	}

	@Override
	public ArrayList<Ticket> selectRecentHistoryList(String id) {
		return mpDao.selectRecentHistoryList(id);
	}

	@Override
	public ArrayList<Ticket> selectRecentViewList(String id) {
		return mpDao.selectRecentViewList(id);
	}

	@Override
	public ArrayList<Performance> selectRecentInterestList(String id) {
		return mpDao.selectRecentInterestList(id);
	}

	@Override
	public Attachment selectPathRename(int i) {
		return mpDao.selectPathRename(i);
	}

	@Override
	public ArrayList<Performance> selectInterestPerformanceList(String id) {
		return mpDao.selectInterestPerformanceList(id);
	}


	
}

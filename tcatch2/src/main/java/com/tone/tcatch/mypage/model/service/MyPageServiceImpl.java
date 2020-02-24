package com.tone.tcatch.mypage.model.service;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.dao.MyPageDao;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.ticket.model.vo.Ticket;

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
	public ArrayList<ArtDetail> selectRecentInterestList(String id) {
		return mpDao.selectRecentInterestList(id);
	}

	@Override
	public ArrayList<ArtDetail> selectInterestPerformanceList(String id) {
		return mpDao.selectInterestPerformanceList(id);
	}

	@Override
	public int deleteAlarm(String id, String artNo) {
		return mpDao.deleteAlarm(id,artNo);
	}

	@Override
	public int deleteInterest(String id, String artNo) {
		return mpDao.deleteInterest(id,artNo);
	}

	@Override
	public Ticket selectTicketDetail(String id, int tNo) {
		return mpDao.selectTicketDetail(id,tNo);
	}

	@Override
	public ArrayList<Ticket> selectTicketList(String id) {
		return mpDao.selectTicketList(id);
	}

	@Override
	public ArrayList<Ticket> selectViewPerformanceList(String id) {
		return mpDao.selectViewPerformanceList(id);
	}

	@Override
	public int insertInterest(String id, int pId) {
		return mpDao.insertInterest(id,pId);
	}

	@Override
	public int insertAlarm(String id, int aId) {
		return mpDao.insertAlarm(id,aId);
	}

	@Override
	public ArrayList<Ticket> searchView(String id, Date sd, Date ed, String artType, String pName) {
		return mpDao.searchView(id,sd,ed,artType,pName);
	}

	@Override
	public ArrayList<Art> selectNoticeList() {
		return mpDao.selectNoticeList();
	}

	@Override
	public Art selectNotice(int nId) {
		return mpDao.selectNotice(nId);
	}

	@Override
	public int refundTicket(String id, int tId) {
		return mpDao.refundTicket(id,tId);
	}


	
}

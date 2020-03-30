package com.tone.tcatch.mypage.model.service;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Seat;
import com.tone.tcatch.common.Pagination;
import com.tone.tcatch.common.model.vo.PageInfo;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.dao.MyPageDao;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.ticket.model.vo.Ticket;

@Service("mpService")
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	MyPageDao mpDao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
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
		String encPwd= bcryptPasswordEncoder.encode(m.getPwd());
		m.setPwd(encPwd);
		
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
	public ArrayList<Alarm> selectRecentInterestList(String id) {
		return mpDao.selectRecentInterestList(id);
	}

	@Override
	public ArrayList<Alarm> selectInterestPerformanceList(String id) {
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
	public ArrayList<Ticket> selectTicketList(String id, int currentPage) {
		int listCount = mpDao.getTListCount(id);
				
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return mpDao.selectTicketList(id,pi);
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
	public ArrayList<Ticket> searchView(String id, String sdate, String edate, String artType, String pName,int currentPage) {
		int listCount = mpDao.searchViewCount(id,sdate,edate,artType,pName);
		
		PageInfo pi = Pagination.getVPageInfo(currentPage, listCount);
		
		return mpDao.searchView(id,sdate,edate,artType,pName,pi);
	}

	
	@Override
	public ArrayList<ArtDetail> selectNoticeList(int currentPage) {
		int listCount = mpDao.getNListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
				
		return mpDao.selectNoticeList(pi);
	}
	
	@Override
	public ArrayList<Img> selectImgList(ArrayList<Integer> list) {
		return mpDao.selectImgList(list);
	}

	@Override
	public ArtDetail selectNotice(int artNo) {
		return mpDao.selectNotice(artNo);
	}

	@Override
	public int refundTicket(String id, int tNo) {
		return mpDao.refundTicket(id,tNo);
	}

	@Override
	public ArrayList<Alarm> confirmTicketingTime(Timestamp d) {
		return mpDao.confirmTicketingTime(d);
	}

	@Override
	public ArrayList<Member> selectAlarmMember(int art) {
		return mpDao.selectAlarmMember(art);
	}

	@Override
	public String selectAView(String id) {
		return mpDao.selectAView(id);
	}

	@Override
	public Img selectImgOne(int artNo) {
		return mpDao.selectImgOne(artNo);
	}

	@Override
	public int selectAlarmUser(String id, int aNo) {
		return mpDao.selectAlarmUser(id,aNo);
	}

	@Override
	public int selectvCount(String id) {
		return mpDao.selectvCount(id);
	}

	@Override
	public ArrayList<Seat> selectSeatList(Integer artNo, Integer timeNo) {
		return mpDao.selectSeatList(artNo,timeNo);
	}

	@Override
	public ArrayList<Ticket> selectAdminTicketList() {
		
		return mpDao.selectAdminTicketList();
	}

	


	
}

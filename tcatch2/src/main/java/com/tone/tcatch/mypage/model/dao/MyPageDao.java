package com.tone.tcatch.mypage.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.ticket.model.vo.Ticket;

@Repository("mpDao")
public class MyPageDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	// 회원 정보 관리
	// 탈퇴
	public int deleteMember(String id) {
		return sqlSession.delete("memberMapper.deleteMember", id);

	}

	// 수정
	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	// 마이페이지 첫 화면
	// 최근 예매내역
	public ArrayList<Ticket> selectRecentHistoryList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectRHistory", id);
	}

	// 최근 관람 내역
	public ArrayList<Ticket> selectRecentViewList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectRView", id);
	}

	// 최근 관심 내역
	public ArrayList<ArtDetail> selectRecentInterestList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectRInterest", id);

	}

	////////////////////////
	// 예매내역
	public ArrayList<Ticket> selectTicketList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectTicketList", id);
	}

	// 예매 내역 상세 보기
	public Ticket selectTicketDetail(String id, int tNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("tNo", tNo);

		return (Ticket) sqlSession.selectOne("myPageMapper.selectTicketDetail", map);
	}

	// 관심 목록
	public ArrayList<ArtDetail> selectInterestPerformanceList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectInterest", id);

	}

	// 알림 목록
	public ArrayList<Alarm> selectAlarmList(String userId) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectAlarmList", userId);
	}

	// 알림 삭제
	public int deleteAlarm(String id, String artNo) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("artNo", artNo);
		return sqlSession.delete("myPageMapper.deleteAlarm", map);
	}

	// 관심 삭제
	public int deleteInterest(String id, String artNo) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("artNo", artNo);
		return sqlSession.delete("myPageMapper.deleteInterest", map);
	}

	// 관심공연 추가
	public int insertInterest(String id, int pNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("artNo", pNo);
		return sqlSession.insert("myPageMapper.insertInterest", map);
	}

	// 알림 추가
	public int insertAlarm(String id, int aNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("pNo", aNo);
		return sqlSession.insert("myPageMapper.insertAlarm", map);
	}

	// 관람내역 조회
	public ArrayList<Ticket> selectViewPerformanceList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectViewList", id);
	}

	
	public ArrayList<Ticket> searchView(String id, Date sdate, Date edate, String artType, String pName) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("sd", sdate);
		map.put("ed", edate);
		map.put("artType", artType);
		map.put("pName", pName);
		return (ArrayList)sqlSession.selectList("myPageMapper.searchView",map);
	}

	public ArrayList<Art> selectNoticeList() {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectNoticeList");
	}

	public Art selectNotice(int nId) {
		return sqlSession.selectOne("myPageMapper.selectNoticeDetail",nId);
	}

	public int refundTicket(String id, int tId) {
		Map<String,Object> map = new HashMap<>();
		map.put("id",id);
		map.put("tId", tId);
		return sqlSession.insert("myPageMapper.insertRefund",map);
	}

	public ArrayList<Art> confirmTicketingTime(Date d) {
		//return (ArrayList)sqlSession.selectList("myPageMapper.selectTicketingArt", d);
		return null;
	}

	public ArrayList<Member> selectAlarmMember(Art art) {
		//return (ArrayList)sqlSession.selectList("myPageMapper.selectAlarmMember",art);
		return null;
	}

}

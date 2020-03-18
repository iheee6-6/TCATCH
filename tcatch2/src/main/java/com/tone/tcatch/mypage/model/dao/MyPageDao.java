package com.tone.tcatch.mypage.model.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.common.model.vo.PageInfo;
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
		return sqlSession.delete("myPageMapper.deleteMember", id);

	}

	// 수정
	public int updateMember(Member m) {
		return sqlSession.update("myPageMapper.updateMember", m);
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
	//리스트 
	public int getTListCount(String id) {
		return sqlSession.selectOne("myPageMapper.getTListCount",id);
	}
	
	// 예매내역
	public ArrayList<Ticket> selectTicketList(String id, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList) sqlSession.selectList("myPageMapper.selectTicketList", id,rowBounds);
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
	public ArrayList<Alarm> selectAlarmList(String id) {
		return (ArrayList) sqlSession.selectList("myPageMapper.selectAlarmList", id);
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

	//알림 중복 확인
	public int selectAlarmUser(String id, int aNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("aNo", aNo);
		return sqlSession.selectOne("myPageMapper.selectAlarmUser",map);
	}
	
	// 알림 추가
	public int insertAlarm(String id, int aNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("aNo", aNo);
		return sqlSession.insert("myPageMapper.insertAlarm", map);
	}


	//관람내역 조회 (검색 포함)
	public ArrayList<Ticket> searchView(String id, String sdate, String edate, String artType, String pName) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("sd", sdate);
		map.put("ed", edate);
		map.put("artType", artType);
		map.put("pName", pName);
		return (ArrayList)sqlSession.selectList("myPageMapper.searchView",map);
	}
	
	//공지사항 수
	public int getNListCount() {
		return sqlSession.selectOne("myPageMapper.getNListCount");
	}

	//공지사항 리스트
	public ArrayList<ArtDetail> selectNoticeList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("myPageMapper.selectNoticeList",null,rowBounds);
	}

	//사진리스트 불러오기
	public ArrayList<Img> selectImgList(ArrayList<Integer> list) {
		System.out.println("hi");
		return (ArrayList)sqlSession.selectList("myPageMapper.selectImgList",list);
	}
	
	//공지사항 디테일
	public ArtDetail selectNotice(int artNo) {
		return sqlSession.selectOne("myPageMapper.selectNoticeDetail",artNo);
	}

	//환불신청
	public int refundTicket(String id, int tNo) {
		Map<String,Object> map = new HashMap<>();
		map.put("id",id);
		map.put("tNo", tNo);
		return sqlSession.insert("myPageMapper.insertRefund",map);
	}

	//티켓팅 시간 확인
	public ArrayList<Alarm> confirmTicketingTime(Timestamp d) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectTicketingArt", d);
	}

	//티켓팅 알림 해당 멤버
	public ArrayList<Member> selectAlarmMember(int art) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectAlarmMember",art);
	}

	//관람공연 조회에서 처음에 날짜 조정(제일 오래된 예매날짜 혹은 회원가입 날짜)
	public String selectAView(String id) {
		String aDate = sqlSession.selectOne("myPageMapper.selectAView",id);
		if(aDate== null) { //예매내역이 없을 시 회원가입 날짜로 한다.
			aDate = sqlSession.selectOne("myPageMapper.selectEnrollDate",id);
		}
		return aDate;
	}

	//사진 가져오기
	public Img selectImgOne(int artNo) {
		return sqlSession.selectOne("myPageMapper.selectImgOne",artNo);
	}

	

	

	
	

}

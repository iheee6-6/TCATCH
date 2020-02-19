package com.tone.tcatch.mypage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.attachment.vo.Attachment;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.mypage.model.vo.Ticket;

@Repository("mpDao")
public class MyPageDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	//회원 정보 관리 
	//탈퇴
	public int deleteMember(String id) {
		return sqlSession.delete("memberMapper.deleteMember",id);
	
	}
	//수정
	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}

	//마이페이지 첫 화면
	//최근 예매내역
	public ArrayList<Ticket> selectRecentHistoryList(String id) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectRHistory",id);
	}

	//최근 관람 내역
	public ArrayList<Ticket> selectRecentViewList(String id) {
		/*return (ArrayList)sqlSession.selectList("myPageMapper.selectRView",id);
	*/ return null;}

	//최근 관심 내역
	public ArrayList<Performance> selectRecentInterestList(String id) {
		/*return (ArrayList)sqlSession.selectList("myPageMapper.selectRInterest",id);
	*/	return null;
	}
	
	////////////////////////
	//관심 목록
	public ArrayList<Performance> selectInterestPerformanceList(String id) {
		/*return (ArrayList)sqlSession.selectList("myPageMapper.selectInterest",id);
*/	
		return null;
		}

	//알림 목록
	public ArrayList<Alarm> selectAlarmList(String userId) {
		/*return (ArrayList)sqlSession.selectList("myPageMapper.selectAlarmList",userId);
	*/
		return null;}
	
	//사진
	public Attachment selectPathRename(int i) {
		// TODO Auto-generated method stub
		return null;
	}

	
}

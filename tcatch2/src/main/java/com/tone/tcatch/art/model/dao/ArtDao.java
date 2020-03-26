package com.tone.tcatch.art.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Company;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;
import com.tone.tcatch.art.model.vo.TicketDate;
import com.tone.tcatch.mypage.model.vo.Alarm;

@Repository("aDao")
public class ArtDao {
	
	@Autowired
	SqlSession sqlSession; 

	public ArrayList<Art> selectList(int type) { // 리스트 
		return (ArrayList)sqlSession.selectList("artMapper.selectList",type);
	}
  
	public ArtDetail selectArt(int artNo) { // 디테일
		return sqlSession.selectOne("artMapper.selectOne", artNo);
	}

	public int addReadCount(int artNo) { // 조회수 증가
		return sqlSession.update("artMapper.updateCount", artNo);
	}

	public ArrayList<Art> searchArt(String title) { // 검색
		
		return (ArrayList)sqlSession.selectList("artMapper.searchArt" , title);
	}

	public int insertSeat(Seat s)  { //좌석 넣기
		return sqlSession.insert("artMapper.insertSeat", s);
	}

	public ArrayList<ArtTime> selectATime(int artNo) { //회차 정보 불러오기
		return (ArrayList)sqlSession.selectList("artMapper.selectATime" , artNo);
	}


	public int selectSeatAllCount(Seat s) { //총 좌석 
		return sqlSession.selectOne("artMapper.selectSeatAllCount" , s);
	}

	public int selectSeatYCount(Seat s) { //예매 가능 좌석
		return sqlSession.selectOne("artMapper.selectSeatYCount" , s);
	}

	public ArrayList<Seat> selectSeatList(Seat s) {// 좌석 정보 불러오기
		return (ArrayList)sqlSession.selectList("artMapper.selectSeatList" , s);
	}

	public int insertArt(Art a) { // 공연 정보 넣기
		return sqlSession.insert("artMapper.insertArt", a);
	}

	public int insertPurchase(Purchase p) { //예매 하기 
		String[] seatList = p.getSeatName().split(" ");
		
		Seat s = null;
		
		for(int i = 0 ; i < seatList.length; i++) {
			s = new Seat(seatList[i] , p.getTimeNo() , p.getArtNo());
			sqlSession.update("artMapper.updateSeat", s); 
		}	
		
		return sqlSession.insert("artMapper.insertPurchase", p);
		
	}

	public int insertImg(Img img) { //이미지 넣기
		return sqlSession.insert("artMapper.insertImg",img);
	}

	public ArrayList<Img> selectImg(int artNo) { // 이미지 불러오기
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("artMapper.selectImg",artNo);
	}

	public int insertArtTime(ArtTime aT) { // 공연 정보 넣기
		return sqlSession.insert("artMapper.insertArtTime" , aT);
	}

	public int insertJjim(Alarm a) { // 찜 하기
		return sqlSession.insert("artMapper.insertJjim" , a);
	}

	public int deleteJjim(Alarm a) { // 찜 취소
		return sqlSession.delete("artMapper.deleteJjim" , a);
	}

	public int selectjjim(Alarm a) {//  찜 검색
		return sqlSession.selectOne("artMapper.selectjjim" , a);
	}

	public int selectCountJjim(int artNo) { // 찜 수 
		return sqlSession.selectOne("artMapper.selectCountJjim" , artNo);
	}

	public int insertTicketDate(TicketDate td) {
		return sqlSession.insert("artMapper.insertTicketDate" , td);
	}

	public int insertCompany(Company c) {
		return sqlSession.insert("artMapper.insertCompany" , c);
	}

	public ArtTime selectATdateTime(ArtTime a) {
		return sqlSession.selectOne("artMapper.selectATdateTime" , a);
	}

	public int selectCountReply(int artNo) {
		return sqlSession.selectOne("artMapper.selectCountReply" , artNo);
	}

	public int selectArtNo() {
		return sqlSession.selectOne("artMapper.selectArtNo");
	}

	public int insertExhibitionSeat() {
		return sqlSession.insert("artMapper.insertExhibitionSeat");
	}

	public int insertExArtTime() {
		return sqlSession.insert("artMapper.insertExArtTime");
	}

}

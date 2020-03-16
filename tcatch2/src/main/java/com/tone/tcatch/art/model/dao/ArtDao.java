package com.tone.tcatch.art.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;

@Repository("aDao")
public class ArtDao {
	
	@Autowired
	SqlSession sqlSession; 

	public ArrayList<Art> selectList() {
		
		return (ArrayList)sqlSession.selectList("artMapper.selectList");
	}
  
	public ArtDetail selectArt(int artNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("artMapper.selectOne", artNo);
	}

	public int addReadCount(int artNo) {
		return sqlSession.update("artMapper.updateCount", artNo);
	}

	public ArrayList<Art> searchArt(String title) {
		
		return (ArrayList)sqlSession.selectList("artMapper.searchArt" , title);
	}

	public int insertSeat(Seat s )  { // 좌석 결제
		return sqlSession.insert("artMapper.updateCount", s);
	}

	public ArrayList<ArtTime> selectATime(int artNo) {
		return (ArrayList)sqlSession.selectList("artMapper.selectATime" , artNo);
	}


	public int selectSeatAllCount(Seat s) { //모든 좌석 
		return sqlSession.selectOne("artMapper.selectSeatAllCount" , s);
	}

	public int selectSeatYCount(Seat s) { //남은 좌석
		return sqlSession.selectOne("artMapper.selectSeatYCount" , s);
	}

	public ArrayList<Seat> selectSeatList(Seat s) {// 좌석 셀렉
		return (ArrayList)sqlSession.selectList("artMapper.selectSeatList" , s);
	}

	public int insertArt(Art a) {
		return sqlSession.insert("artMapper.insertArt", a);
	}

	public int insertPurchase(Purchase p) {
		String[] seatList = p.getSeatName().split(" ");
		
		for(int i = 0 ; i < seatList.length; i++) {
			System.out.println("seatList ^^lqkf" + seatList[i]);
		}	
		
		Seat s = null;
		
		for(int i = 0 ; i < seatList.length; i++) {
			s = new Seat(seatList[i] , p.getTimeNo() , p.getArtNo());
			sqlSession.update("artMapper.updateSeat", s); 
		}	
		
		return sqlSession.insert("artMapper.insertPurchase", p);
		
	}

	public int insertImg(Img img) { //사진 넣기
		return sqlSession.insert("artMapper.insertImg",img);
	}

	public ArrayList<Img> selectImg(int artNo) { // 사진 불러오기
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("artMapper.selectImg",artNo);
	}

	public int insertArtTime(ArtTime aT) {
		return sqlSession.insert("artMapper.insertArtTime" , aT);
	}

}

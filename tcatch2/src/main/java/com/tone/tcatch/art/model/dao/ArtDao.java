package com.tone.tcatch.art.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
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

	public int insertSeat(Seat s )  { // ÁÂ¼® °áÁ¦
		return sqlSession.insert("artMapper.updateCount", s);
	}

	public ArtTime selectATime(int artNo) {
		return sqlSession.selectOne("artMapper.selectATime" , artNo);
	}


	public int selectSeatAllCount(Seat s) { //¸ðµç ÁÂ¼® 
		return sqlSession.selectOne("artMapper.selectSeatAllCount" , s);
	}

	public int selectSeatYCount(Seat s) { //³²Àº ÁÂ¼®
		return sqlSession.selectOne("artMapper.selectSeatYCount" , s);
	}

	public ArrayList<Seat> selectSeatList(Seat s) {// ÁÂ¼® ¼¿·º
		return (ArrayList)sqlSession.selectList("artMapper.selectSeatList" , s);
	}

	public int insertArt(Art a) {
		return sqlSession.insert("artMapper.insertArt", a);
	}

	public int insertPurchase(Purchase p) {
		return sqlSession.insert("artMapper.insertPurchase", p);
	}

}

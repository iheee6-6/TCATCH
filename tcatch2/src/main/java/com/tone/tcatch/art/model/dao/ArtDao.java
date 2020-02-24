package com.tone.tcatch.art.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
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

	public ArrayList<Seat> selectSeatList(int timeNo) { // ÁÂ¼® ¼¿·º
		
		return (ArrayList)sqlSession.selectList("artMapper.selectSeatList" , timeNo);
	}

	public int insertSeat(Seat s )  { // ÁÂ¼® °áÁ¦
		return sqlSession.insert("artMapper.updateCount", s);
	}

	public ArtTime selectATime(int artNo) {
		
		return sqlSession.selectOne("artMapper.selectATime" , artNo);
		
	}

}

package com.tone.tcatch.art.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.art.model.vo.Art;

@Repository("aDao")
public class ArtDao {
	
	@Autowired
	SqlSession sqlSession;

	public ArrayList<Art> selectList() {
		
		return (ArrayList)sqlSession.selectList("artMapper.selectList");
	}

	public Art selectArt(int artNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("artMapper.selectOne", artNo);
	}

	public int addReadCount(int artNo) {
		return sqlSession.update("artMapper.updateCount", artNo);
		
	}

}

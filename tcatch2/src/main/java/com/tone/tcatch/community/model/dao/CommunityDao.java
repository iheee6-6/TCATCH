package com.tone.tcatch.community.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.common.model.vo.PageInfo;
import com.tone.tcatch.community.model.vo.Reply;
import com.tone.tcatch.community.model.vo.Report;

@Repository("cDao")
public class CommunityDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertCommunity(Community c) {
		
		return sqlSession.insert("communityMapper.insertCommunity",c);
	}

	public int getListCount() {
		
		return sqlSession.selectOne("communityMapper.getListCount");
	}

	public ArrayList<Community> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1 ) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("communityMapper.selectList", null, rowBounds);
	}

	public int addReadCount(int cNo) {
		return sqlSession.update("communityMapper.updateCount",cNo);
	}

	public Community selectCommunity(int cNo) {
		
		return sqlSession.selectOne("communityMapper.selectCommunity",cNo);
	}

	public int deleteCommunity(int cNo) {
		
		return sqlSession.delete("communityMapper.deleteCommunity",cNo);
	}

	public int insertReply(Reply r) {
		
		return sqlSession.insert("communityMapper.insertReply",r);
	}

	public ArrayList<Reply> selectReplyList(int cNo) {
		
		return (ArrayList)sqlSession.selectList("communityMapper.selectReply",cNo);
	}

	public int updateCommunity(Community c) {
		
		return sqlSession.update("communityMapper.updateCommunity",c);
	}

	public int deleteReply(int rId) {
		
		return sqlSession.update("communityMapper.updateReply",rId);
	}

	public int insertReport(Report r) {
		System.out.println("dao"+r);
		return sqlSession.insert("communityMapper.insertReport",r);
	}
	
	public ArrayList<Reply> getReplyArtList(int artNo) {
	      return (ArrayList)sqlSession.selectList("communityMapper.selectArtReply",artNo);
	   }

	public ArrayList<Report> selectReport() {
		
		return (ArrayList)sqlSession.selectList("communityMapper.selectReport");
	}

	public int delReport(Community c) {
		
		return sqlSession.delete("communityMapper.delReport",c);
	}

	public int deleteR(int dNo) {
		
		return sqlSession.delete("communityMapper.deleteR",dNo);
	}

	public void updateR(int dNo) {
		sqlSession.update("communityMapper.updateR",dNo);
		
	}
	
}

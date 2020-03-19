package com.tone.tcatch.community.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.common.model.vo.PageInfo;
import com.tone.tcatch.community.model.vo.Reply;

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
	
}

package com.tone.tcatch.community.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.common.Pagination;
import com.tone.tcatch.community.model.dao.CommunityDao;
import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.common.model.vo.PageInfo;
import com.tone.tcatch.community.model.vo.Reply;
import com.tone.tcatch.community.model.vo.Report;

@Service("cService")
public class CommunityServiceImpl implements CommunityService{

	
	@Autowired
	private CommunityDao cDao;

	@Override
	public ArrayList<Community> selectList(int currentPage) {

		int listCount = cDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage,listCount);

		
		return cDao.selectList(pi);
	}

	@Override
	public int insertCommunity(Community c) {
		
		return cDao.insertCommunity(c);
	}


	@Override
	public int insertReply(Reply r) {
		return cDao.insertReply(r);
	}

	@Override
	public Community selectCommunity(int cNo, boolean flag) {
		
		if(!flag) {
			cDao.addReadCount(cNo);
		}
		
		return cDao.selectCommunity(cNo);
	}

	@Override
	public int deleteCommunity(int cNo) {
		return cDao.deleteCommunity(cNo);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int cNo) {
		
		return cDao.selectReplyList(cNo);
	}

	@Override
	public int updateCommunity(Community c) {
		
		return cDao.updateCommunity(c);
	}

	@Override
	public int deleteReply(int rId) {
		
		return cDao.deleteReply(rId);
	}

	@Override
	public int insertReport(Report r) {
		
		return cDao.insertReport(r);
	}
	
	@Override
	   public ArrayList<Reply> getReplyArtList(int artNo) {
	      return cDao.getReplyArtList(artNo);
	   }
}

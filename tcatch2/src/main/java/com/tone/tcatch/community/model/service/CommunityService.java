package com.tone.tcatch.community.model.service;

import java.util.ArrayList;

import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.community.model.vo.Reply;
import com.tone.tcatch.community.model.vo.Report;

public interface CommunityService {

	ArrayList<Community> selectList(int currentPage);

	int insertCommunity(Community c);

	Community selectCommunity(int cNo, boolean flag);

	int updateCommunity(Community c);

	int deleteCommunity(int cNo);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(int cNo);

	int deleteReply(int rId);

	int insertReport(Report r);
	
	ArrayList<Reply> getReplyArtList(int artNo); // Art 댓글

}

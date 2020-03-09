package com.tone.tcatch.community.model.service;

import java.util.ArrayList;

import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.community.model.vo.Reply;

public interface CommunityService {

	ArrayList<Community> selectList(int currentPage);

	int insertCommunity(Community c);

	Community selectCommunity(int cNo, boolean flag);

	int updateCommunity();

	int deleteCommunity(int cNo);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(int cNo);

}

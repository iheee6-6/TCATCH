package com.tone.tcatch.community.model.service;

import java.util.ArrayList;

import com.tone.tcatch.community.model.vo.Community;

public interface CommunityService {

	ArrayList<Community> selectList();

	int insertCommunity(Community c);

	Community selectCommunity();

	int updateCommunity();

	int deleteCommunity();

	int insertReply();

}

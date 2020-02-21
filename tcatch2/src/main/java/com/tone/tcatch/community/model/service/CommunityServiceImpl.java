package com.tone.tcatch.community.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.community.model.dao.CommunityDao;
import com.tone.tcatch.community.model.vo.Community;

@Service("cService")
public class CommunityServiceImpl implements CommunityService{

	
	@Autowired
	private CommunityDao cDao;

	@Override
	public ArrayList<Community> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertCommunity(Community c) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Community selectCommunity() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateCommunity() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCommunity() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertReply() {
		// TODO Auto-generated method stub
		return 0;
	}
}

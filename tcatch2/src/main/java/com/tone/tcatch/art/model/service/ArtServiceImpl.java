package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.dao.ArtDao;
import com.tone.tcatch.art.model.vo.Art;

@Service("aService")
public class ArtServiceImpl implements ArtService{
	
	@Autowired
	private ArtDao aDao;
	  
	
	@Override
	public ArrayList<Art> selectList() {
		 
		return aDao.selectList();
	}


	@Override
	public Art selectArt(int artNo, boolean flag) {
		// 1. 조회수 증가
		if(!flag) { // 해당 글을 읽지 않았다면(flag가 false)
			aDao.addReadCount(artNo);
		}
		
		// 2. 게시글 조회
		return aDao.selectArt(artNo);
	}

}

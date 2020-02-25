package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.dao.ArtDao;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Seat;

@Service("aService")
public class ArtServiceImpl implements ArtService{
	
	@Autowired
	private ArtDao aDao;
	  
	
	@Override
	public ArrayList<Art> selectList() { // 리스트 
		 
		return aDao.selectList();
	}


	@Override
	public ArtDetail selectArt(int artNo, boolean flag) { // 디테일
		// 1. 조회수 증가
		if(!flag) { // 해당 글을 읽지 않았다면(flag가 false)
			aDao.addReadCount(artNo);
		}
		// 2. 게시글 조회
		return aDao.selectArt(artNo);
	}


	@Override
	public ArrayList<Art> searchArt(String title) { // 검색
		return aDao.searchArt(title);
	}


	@Override
	public ArrayList<Seat> selectSeatList(int timeNo) { // 좌석 불러오기
		return aDao.selectSeatList(timeNo);
	}


	@Override
	public int insertSeat(Seat s) { // 좌석 거ㅕㄹ제
		return aDao.insertSeat(s);
	}


	@Override
	public ArtTime selectATime(int artNo) {
		return aDao.selectATime(artNo);
	}


	@Override
	public Seat selectSeatCount(int timeNo, int artNo) { //좌석수 , 남은 좌석수 
		// TODO Auto-generated method stub
		return aDao.selectSeatCount(timeNo,artNo);
	}
	
	
	
	

}

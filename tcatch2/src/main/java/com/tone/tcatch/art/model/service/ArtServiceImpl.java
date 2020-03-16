package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.dao.ArtDao;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
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
	public int insertSeat(Seat s) { // 좌석 거ㅕㄹ제
		return aDao.insertSeat(s);
	}


	@Override
	public ArrayList<ArtTime> selectATime(int artNo) { // 회차 검색
		return aDao.selectATime(artNo);
	}


	@Override
	public int selectSeatAllCount(Seat s) { // 총 좌석 수
		return aDao.selectSeatAllCount(s);
	}


	@Override
	public int selectSeatYCount(Seat s) { //남은  좌석 수 
		return aDao.selectSeatYCount(s);
	}


	@Override
	public ArrayList<Seat> selectSeatList(Seat s) { //좌석 불러오기
		return aDao.selectSeatList(s);
	}


	@Override
	public int insertArt(Art a) { // 공연 insert
		return aDao.insertArt(a);
	}


	@Override
	public int insertPurchase(Purchase p) { // 예매 insert
		return aDao.insertPurchase(p);
	}


	@Override
	public int insertImg(Img img) { // 사진 insert
		
		return aDao.insertImg(img);
	}


	@Override
	public ArrayList<Img> selectImg(int artNo) { //사진 detaile select
		return aDao.selectImg(artNo);
	}


	@Override
	public int inserArtTime(ArtTime aT) { //회차 insert 
		return aDao.insertArtTime(aT);
	}
	
	
	
	

}

package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;

public interface ArtService { 
	
	//리스트
	ArrayList<Art> selectList();
	
	//디테일
	ArtDetail selectArt(int artNo , boolean flag);
	//디테일 회차
	ArtTime selectATime(int artNo);

	
	//검색
	ArrayList<Art> searchArt(String title);
	
	//좌석 리스트 불러오기
	ArrayList<Seat> selectSeatList(Seat s);
	
	//좌석 결제
	int insertSeat(Seat s);

	//총 좌석 수 
	int selectSeatAllCount(Seat s); 
	
	//남은 좌석 수 
	int selectSeatYCount(Seat s);
	
	//공연 작성
	int insertArt(Art a);
	
	//예매하기
	int insertPurchase(Purchase p);
	
	

}
  
package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Company;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;
import com.tone.tcatch.art.model.vo.TicketDate;
import com.tone.tcatch.mypage.model.vo.Alarm;

public interface ArtService { 
	
	//리스트 뽑아오기
	ArrayList<Art> selectList(int type);
	
	//디테일
	ArtDetail selectArt(int artNo , boolean flag);
	
	//화차 검색
	ArrayList<ArtTime> selectATime(int artNo);
	
	//공연 제목 검색
	ArrayList<Art> searchArt(String title);
	
	//좌석 불러오기
	ArrayList<Seat> selectSeatList(Seat s);
	
	// 좌석 insert
	int insertSeat(Seat s);

	// 모든 좌석 수 
	int selectSeatAllCount(Seat s); 
	
	// 예매 가능 좌석 수 
	int selectSeatYCount(Seat s);
	
	// 공연 정보 넣기
	int insertArt(Art a);
	
	// 예매 넣기
	int insertPurchase(Purchase p);
	
	//이미지 넣기
	int insertImg(Img img);
	
	//썸네일 및 공연정보 찾아오기
	ArrayList<Img> selectImg(int artNo);
	
	//공연정보 넣기
	int inserArtTime(ArtTime aT);

	//찜
	int insertJjim(Alarm a);

	//찜취소
	int deleteJjim(Alarm a);
	
	//찜 검색
	int selectjjim(Alarm a);
	
	//찜 수 
	int selectCountJjim(int artNo);
	
	//티켓 오픈 , 시작 ,종료 날짜 
	int insertTicketDate(TicketDate td);

	//회사 insert
	int insertCompany(Company c);
	
	//회차 번호를 통한 회차 정보 가져옴
	ArtTime selectATdateTime(ArtTime a);
	
	//댓글 수 
	int selectCountReply(int artNo);

	//CURRVAL ARTNO
	int selectArtNo();
	
	//insert 입장권
	int insertExhibitionSeat();
	
	//insert Ex회차
	int insertExArtTime();
	
	//회사 select
	ArrayList<Company> selectCompany();

	//메인 topList
	ArrayList<Art> selectRank(int i);


	int deleteArt(Art a);

	//updateArt
	int updateArt(Art a);
	
	//update IMG
	int updateImg(Img img);
	//update TicketDAte
	int updateTicketDate(TicketDate td);

	


}
  
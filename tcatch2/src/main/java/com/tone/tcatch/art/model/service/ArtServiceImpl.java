package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.art.model.dao.ArtDao;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Company;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;
import com.tone.tcatch.art.model.vo.TicketDate;
import com.tone.tcatch.mypage.model.vo.Alarm;

@Service("aService")
public class ArtServiceImpl implements ArtService{
	
	@Autowired
	private ArtDao aDao;
	  
	
	@Override
	public ArrayList<Art> selectList(int type) { // 리스트 불러오기
		 
		return aDao.selectList(type);
	}


	@Override
	public ArtDetail selectArt(int artNo, boolean flag) { // 디테일 

		if(!flag) { 
			aDao.addReadCount(artNo);
		}
		
		return aDao.selectArt(artNo);
	}


	@Override
	public ArrayList<Art> searchArt(String title) { // �˻�
		return aDao.searchArt(title);
	}


	@Override
	public ArrayList<ArtTime> selectATime(int artNo) { // ȸ�� �˻�
		return aDao.selectATime(artNo);
	}


	@Override
	public int selectSeatAllCount(Seat s) { // �� �¼� ��
		return aDao.selectSeatAllCount(s);
	}


	@Override
	public int selectSeatYCount(Seat s) { //����  �¼� �� 
		return aDao.selectSeatYCount(s);
	}


	@Override
	public ArrayList<Seat> selectSeatList(Seat s) { //�¼� �ҷ�����
		return aDao.selectSeatList(s);
	}


	@Override
	public int insertArt(Art a) { // ���� insert
		return aDao.insertArt(a);
	}


	@Override
	public int insertPurchase(Purchase p) { // ���� insert
		return aDao.insertPurchase(p);
	}


	@Override
	public int insertImg(Img img) { // ���� insert
		
		return aDao.insertImg(img);
	}


	@Override
	public ArrayList<Img> selectImg(int artNo) { //���� detaile select
		return aDao.selectImg(artNo);
	}


	@Override
	public int inserArtTime(ArtTime aT) { //ȸ�� insert 
		return aDao.insertArtTime(aT);
	}


	@Override
	public int insertJjim(Alarm a) { //찜 
		return aDao.insertJjim(a);
	}


	@Override
	public int deleteJjim(Alarm a) { //찜 취소
		return aDao.deleteJjim(a);
	}


	@Override
	public int selectjjim(Alarm a) { //찜 검색
		return aDao.selectjjim(a);
	}


	@Override
	public int selectCountJjim(int artNo) {// 찜한 사람 수 
		return aDao.selectCountJjim(artNo);
	}


	@Override
	public int insertTicketDate(TicketDate td) { //insert 티켓날짜
		return aDao.insertTicketDate(td);
	}


	@Override
	public int insertCompany(Company c) { //insert 회사
		return aDao.insertCompany(c);
	}


	@Override
	public ArtTime selectATdateTime(ArtTime a) { //회차 정보 가져오기
		return aDao.selectATdateTime(a);
	}


	@Override
	public int selectCountReply(int artNo) { //댓글 수 
		return aDao.selectCountReply(artNo);
	}


	@Override
	public int insertSeat(Seat s) {
		return aDao.insertSeat(s);
	}


	@Override
	public int selectArtNo() {
		return aDao.selectArtNo();
	}


	@Override
	public int insertExhibitionSeat() {
		return aDao.insertExhibitionSeat();
	}


	@Override
	public int insertExArtTime() {
		return aDao.insertExArtTime();
	}


	@Override
	public ArrayList<Company> selectCompany() {
		return aDao.selectCompany();
	}


	@Override
	public ArrayList<Art> selectRank(int i) {
		return aDao.selectRank(i);
	}


	
	
	

}

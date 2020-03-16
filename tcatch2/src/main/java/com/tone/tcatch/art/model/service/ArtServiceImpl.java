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
	public ArrayList<Art> selectList() { // ����Ʈ 
		 
		return aDao.selectList();
	}


	@Override
	public ArtDetail selectArt(int artNo, boolean flag) { // ������
		// 1. ��ȸ�� ����
		if(!flag) { // �ش� ���� ���� �ʾҴٸ�(flag�� false)
			aDao.addReadCount(artNo);
		}
		// 2. �Խñ� ��ȸ
		return aDao.selectArt(artNo);
	}


	@Override
	public ArrayList<Art> searchArt(String title) { // �˻�
		return aDao.searchArt(title);
	}


	@Override
	public int insertSeat(Seat s) { // �¼� �ŤŤ���
		return aDao.insertSeat(s);
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
	
	
	
	

}

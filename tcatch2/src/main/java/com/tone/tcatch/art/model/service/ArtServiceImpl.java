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
	public ArrayList<Seat> selectSeatList(int timeNo) { // �¼� �ҷ�����
		return aDao.selectSeatList(timeNo);
	}


	@Override
	public int insertSeat(Seat s) { // �¼� �ŤŤ���
		return aDao.insertSeat(s);
	}


	@Override
	public ArtTime selectATime(int artNo) {
		return aDao.selectATime(artNo);
	}


	@Override
	public Seat selectSeatCount(int timeNo, int artNo) { //�¼��� , ���� �¼��� 
		// TODO Auto-generated method stub
		return aDao.selectSeatCount(timeNo,artNo);
	}
	
	
	
	

}

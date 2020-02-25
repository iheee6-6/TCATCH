package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Seat;

public interface ArtService { 
	
	//����Ʈ
	ArrayList<Art> selectList();
	
	//������
	ArtDetail selectArt(int artNo , boolean flag);
	//������ ȸ��
	ArtTime selectATime(int artNo);

	
	//�˻�
	ArrayList<Art> searchArt(String title);
	
	//�¼� ����Ʈ �ҷ�����
	ArrayList<Seat> selectSeatList(int timeNo);
	
	//�¼� ����
	int insertSeat(Seat s);

	Seat selectSeatCount(int timeNo, int artNo);
	

}
  
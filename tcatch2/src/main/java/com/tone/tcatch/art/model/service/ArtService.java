package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.Seat;

public interface ArtService { 
	
	//����Ʈ
	ArrayList<Art> selectList();
	
	//������
	Art selectArt(int artNo , boolean flag);

	
	//�˻�
	ArrayList<Art> searchArt(String title);
	
	//�¼� ����Ʈ �ҷ�����
	ArrayList<Seat> selectSeatList(int timeNo);
	
	//�¼� ����
	int insertSeat(Seat s);

}
  
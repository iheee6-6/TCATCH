package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Purchase;
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
	ArrayList<Seat> selectSeatList(Seat s);
	
	//�¼� ����
	int insertSeat(Seat s);

	//�� �¼� �� 
	int selectSeatAllCount(Seat s); 
	
	//���� �¼� �� 
	int selectSeatYCount(Seat s);
	
	//���� �ۼ�
	int insertArt(Art a);
	
	//�����ϱ�
	int insertPurchase(Purchase p);
	
	

}
  
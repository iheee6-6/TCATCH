package com.tone.tcatch.mypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tone.tcatch.mypage.model.dao.MyPageDao;
import com.tone.tcatch.mypage.model.vo.Alarm;

@Service("mpService")
public class MyPageServiceImpl implements MyPageService{

	/*@Autowired
	MyPageDao mpDao;
	
	public ArrayList<Alarm> selectAlarmList(String userId){
		return mpDao.selectAlarmList(userId);
	}*/
}

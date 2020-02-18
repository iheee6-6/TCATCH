package com.tone.tcatch.mypage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.mypage.model.vo.Alarm;

@Repository("mpDao")
public class MyPageDao {
	/*@Autowired
	SqlSessionTemplate sqlSession;
	
	public ArrayList<Alarm> selectAlarmList(String userId) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectAlarmList",userId);
	}*/

}

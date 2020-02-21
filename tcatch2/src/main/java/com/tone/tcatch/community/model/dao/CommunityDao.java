package com.tone.tcatch.community.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("cDao")
public class CommunityDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
}

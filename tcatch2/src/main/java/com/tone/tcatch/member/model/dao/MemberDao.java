package com.tone.tcatch.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tone.tcatch.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertMember(Member m) {
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int checkIdDup(String id) {
		
		return sqlSession.selectOne("memberMapper.idCheck", id);
		
	}

	public Member selectMember(Member m) {
		System.out.println("m 은 ? " + m);
		return sqlSession.selectOne("memberMapper.selectOne",m);
	}

	public int deleteMember(String id) {
		
		return sqlSession.delete("memberMapper.deleteMember",id);
	}

}

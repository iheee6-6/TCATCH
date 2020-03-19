package com.tone.tcatch.member.model.dao;

import java.util.ArrayList;

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
		return sqlSession.selectOne("memberMapper.selectOne",m);
	}

	public int deleteMember(String id) {
		
		return sqlSession.delete("memberMapper.deleteMember",id);
	}

	public int updateMember(Member m) {
		
		return sqlSession.update("memberMapper.updateMember",m);
	}

	public ArrayList<Member> selectList() {
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectList");
	}

	public int memberOut(Member m) {
		
		return sqlSession.update("memberMapper.memberOut",m);
	}

}

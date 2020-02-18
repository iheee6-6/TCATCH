package com.tone.tcatch.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tone.tcatch.member.model.dao.MemberDao;
import com.tone.tcatch.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberDao mDao;

	@Override
	public int insertMember(Member m) {
		String encPwd= bcryptPasswordEncoder.encode(m.getPwd());
		m.setPwd(encPwd);
		
		return mDao.insertMember(m);
		
	}

	@Override
	public int checkIdDup(String id) {
		
		return mDao.checkIdDup(id);
	}

	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.selectMember(m);
		
		// select 된 아이디 값은 있으나 비밀번호가 매칭되지 않은 경우
		// 앞의 조건이 빠지면 우리가 원하는 MemberException이 아닌
		// nullPointerException이 발생함
		if(loginUser != null && !bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			loginUser = null;
		}
		return loginUser;
	}

	@Override
	public int deleteMember(String id) {
		
		return mDao.deleteMember(id);
	}

}

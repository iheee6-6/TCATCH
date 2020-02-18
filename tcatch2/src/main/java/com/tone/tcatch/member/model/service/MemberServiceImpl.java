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

}

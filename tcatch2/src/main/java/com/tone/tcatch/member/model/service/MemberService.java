package com.tone.tcatch.member.model.service;

import com.tone.tcatch.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int checkIdDup(String id);

	Member loginMember(Member m);

	int deleteMember(String id);

}

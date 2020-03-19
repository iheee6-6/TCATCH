package com.tone.tcatch.member.model.service;

import java.util.ArrayList;

import com.tone.tcatch.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int checkIdDup(String id);

	Member loginMember(Member m);

	int deleteMember(String id);

	int updateMember(Member m);

	ArrayList<Member> memberList();

	int memberOut(Member m);

}

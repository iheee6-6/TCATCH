package com.tone.tcatch.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("/login.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("enrollView.do")
	public String enrollView() {
		return "member/memberJoin";
	}
	
	@RequestMapping("/enterMypage.do")
	public String enterMypage() {
		return "mypage/firstPage";
	}
	
	@RequestMapping("/interestPerformance.do")
	public String selectInterestP() {
		return "mypage/interestPerformance";
	}
	
	@RequestMapping("/alarmList.do")
	public String AlarmList() {
		return "mypage/alarmList";
	}
	
	@RequestMapping("/checknCancel.do")
	public String ticketChecknCancel() {
		return "mypage/ChecknCancel";
	}
	
	@RequestMapping("/cncDetail.do")
	public String cncDetail() {
		return "mypage/CnCDetail";
	}
	
	@RequestMapping("/viewPerformance.do")
	public String viewPerformance() {
		return "mypage/viewPerformance";
	}
}

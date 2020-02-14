package com.tone.tcatch.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("enterMypage.do")
	public String enterMypage() {
		return "mypage/firstPage";
	}
	
	@RequestMapping("interestPerformance.do")
	public String selectInterestP() {
		return "mypage/interestPerformance";
	}
	
	@RequestMapping("alarmList.do")
	public String AlarmList() {
		return "mypage/alarmList";
	}
	
	@RequestMapping("checknCancel.do")
	public String ticketChecknCancel() {
		return "mypage/checkNcancel";
	}
	
	@RequestMapping("cncDetail.do")
	public String cncDetail() {
		return "mypage/cNcDetail";
	}
	
	@RequestMapping("viewPerformance.do")
	public String viewPerformance() {
		return "mypage/viewPerformance";
	}
	
	@RequestMapping("memberUpdateView.do")
	public String memberUpdateView() {
		return "mypage/memberUpdateForm";
	}
	
	@RequestMapping("deleteP.do")
	public String deletePerformance() {
		return "mypage/interestPerformance";
	}
	
}

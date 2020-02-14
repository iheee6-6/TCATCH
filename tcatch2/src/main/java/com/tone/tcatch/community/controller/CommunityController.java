package com.tone.tcatch.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {

	@RequestMapping("/clist.do")
	public String communityList() {
		return "community/communityList";
	}
	
	@RequestMapping("/cnotice.do")
	public String communityNotice() {
		return "community/communityNotice";
	}
	@RequestMapping("/cnotice4.do")
	public String communityNotice4() {
		return "community/communityNotice4";
	}
	@RequestMapping("/cnotice3.do")
	public String communityNotice3() {
		return "community/communityNotice3";
	}
	@RequestMapping("/cnotice2.do")
	public String communityNotice2() {
		return "community/communityNotice2";
	}
	
}

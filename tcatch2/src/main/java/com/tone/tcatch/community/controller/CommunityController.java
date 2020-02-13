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
	
}

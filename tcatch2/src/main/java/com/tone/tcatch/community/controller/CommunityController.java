package com.tone.tcatch.community.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tone.tcatch.community.model.service.CommunityService;
import com.tone.tcatch.community.model.vo.Community;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService cService;

	@RequestMapping("/clist.do")
	public String communityList() {
		
		ArrayList<Community> list = cService.selectList();
		
		return "community/communityList";
	}
	
	@RequestMapping("cinsertView.do")
	public String communityInsertView() {
		
		return "community/communityInsertForm";
	}
	
	@RequestMapping("cinsert.do")
	public String communityInsert() {
		Community c = new Community();
		
		int result = cService.insertCommunity(c);
		
		return null;
	}
	
	@RequestMapping("cdetail.do")
	public String communityDetail() {
		
		Community commu = null;
		
		commu = cService.selectCommunity();
		
		return null;
	}
	
	@RequestMapping("cdelete.do")
	public String communityDelete() {
		
		int result = cService.deleteCommunity();
		
		return null;
	}
	
	@RequestMapping("cupdate.do")
	public String communityUpdate() {
		
		int result = cService.updateCommunity();
		
		return null;
	}
	
	@RequestMapping("addReply.do")
	public String addReply() {
		
		int result = cService.insertReply();
		
		return null;
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

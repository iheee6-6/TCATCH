package com.tone.tcatch.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.mypage.model.service.MyPageService;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService mpService;
	
	@RequestMapping("enterMyPage.do")
	public String enterMypage() {
		
		return "mypage/firstPage";
	}
	
	/*@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> historyList = 
		mv.addObject(list,"list");
		mv.setViewName("mypage/firstPage");
		return mv;
	}*/
	
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
	
	@RequestMapping("noticeView.do")
	public String noticeView() {
		return "mypage/notice";
	}
	
	
	@Scheduled(cron="0 59 15 * * *")
	public void test() {
		 /*Calendar datetime = Calendar.getInstance();
		  datetime.set(Calendar.HOUR_OF_DAY, stime);
		  datetime.set(Calendar.MINUTE, smin);
		  datetime.set(Calendar.SECOND, 0);
		  datetime.set(Calendar.MILLISECOND, 0);
		 
		  Timer timer = new Timer();
		  timer.schedule(new runTask(), datetime.getTime(), 1000*86400);*/
		  
		System.out.println("@Scheduled 테스트");
	}
}



package com.tone.tcatch.mypage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.service.MyPageService;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.mypage.model.vo.Ticket;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService mpService;
	
	@RequestMapping("enterMyPage.do")
	public String enterMypage() {
		
		return "mypage/firstPage";
	}
	
	/*@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> recentHistoryList = mpService.selectRecentHistoryList(loginUser.getId());
		ArrayList<Ticket> recentTicketList = mpService.selectRecentTicketList(loginUser.getId());
		ArrayList<Performance> recentInterestList = mpService.selectRecentInterestList(loginUser.getId());
		
		mv.addObject("recentHistoryList",recentHistoryList);
		mv.addObject("recentTicketList",recentTicketList);
		mv.addObject("recentInterestList",recentInterestList);
		mv.setViewName("mypage/firstPage");
		return mv;
	}*/
	
	/*@RequestMapping("interestPerformance.do")
	public ModelAndView interestPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> interestPerformanceList = mpService.selectInterestPerformanceList(loginUser.getId());
		
		mv.addObject("interestPerformanceList",interestPerformanceList);
		mv.setViewName("mypage/interestPerformance");
		return mv;
	}*/
	
	/*@RequestMapping("alarmList.do")
	public ModelAndView alarmList(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> alarmList = mpService.selectAlarmList(loginUser.getId());
		
		mv.addObject("alarmList",alarmList);
		mv.setViewName("mypage/alarmList");
		return mv;
	}*/
	
	/*@RequestMapping("alarmList.do")
	public ModelAndView alarmList(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> alarmList = mpService.selectAlarmList(loginUser.getId());
		
		mv.addObject("alarmList",alarmList);
		mv.setViewName("mypage/alarmList");
		return mv;
	}*/
	
	/*@RequestMapping("checknCancel.do")
	public ModelAndView checknCancel(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> ticketList = mpService.selectTicketList(loginUser.getId());
		
		mv.addObject("ticketList",ticketList);
		mv.setViewName("mypage/checknCancel");
		return mv;
	}*/
	
	/*@RequestMapping("cncDetail.do")
	public ModelAndView cncDetail(ModelAndView mv, HttpSession session,int tId ) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Ticket ticket = mpService.selectTicket(loginUser.getId(),tId);
		
		mv.addObject("ticket",ticket);
		mv.setViewName("mypage/cNcDetail");
		return mv;
	}*/
	
	/*@RequestMapping("refund.do")
	public ModelAndView refund(ModelAndView mv, HttpSession session,int tId ) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.refundTicket(loginUser.getId(),tId);
		
		mv.setViewName("redirect:checknCancel.do");
		return mv;
	}*/
	
	/*@RequestMapping("viewPerformance.do")
	public ModelAndView viewPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> viewPerformanceList = mpService.selectViewPerformanceList(loginUser.getId());
		
		mv.addObject("viewPerformanceList",viewPerformanceList);
		mv.setViewName("mypage/viewPerformance");
		return mv;
	}*/
	
	/*@RequestMapping("memberUpdateView.do")
	public ModelAndView memberUpdateView(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Member member = mService.selectMember(loginUser.getId());
		
		mv.addObject("member",member);
		mv.setViewName("mypage/memberUpdateForm");
		return mv;
	}*/
	
	/*@RequestMapping("memberUpdate.do")
	public ModelAndView memberUpdate(ModelAndView mv, Member member) {
		
		int result= mService.updateMember(member);
		
		mv.addObject("member",member);
		mv.setViewName("mypage/memberUpdateForm");
		return mv;
	}*/
	
	/*@RequestMapping("noticeView.do")
	public ModelAndView noticeView(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Performance noticeList = mpService.selecNoticeList(loginUser.getId());
		
		mv.addObject("noticeList",noticeList);
		mv.setViewName("mypage/memberUpdateForm");
		return mv;
	}*/
	
	/*@RequestMapping("noticeDetailView.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, int nId) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Performance notice = mpService.selectNotice(loginUser.getId(),nId);
		
		mv.addObject("notice",notice);
		mv.setViewName("mypage/noticeDetailView");
		return mv;
	}*/
	
	/*@RequestMapping("deleteInterest.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, int pId) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.deleteInterest(loginUser.getId(),pId);
		
		
		mv.setViewName("redirect:interestPerformance.do");
		return mv;
	}*/
	
	/*@RequestMapping("insertInterest.do")
	public ModelAndView insertInterest(ModelAndView mv, HttpSession session, int pId) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.insertInterest(loginUser.getId(),pId);
		
		
		mv.setViewName("redirect:interestPerformance.do");
		return mv;
	}*/
	
	/*@RequestMapping("deleteAlarm.do")
	public ModelAndView deleteAlarm(ModelAndView mv, HttpSession session, int aId) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.deleteAlarm(loginUser.getId(),aId);
		
		mv.setViewName("redirect:alarmList.do");
		return mv;
	}*/
	
	/*@RequestMapping("insertAlarm.do")
	public ModelAndView insertAlarm(ModelAndView mv, HttpSession session, int aId) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.insertAlarm(loginUser.getId(),aId);
		
		mv.setViewName("redirect:alarmList.do");
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
	
	@RequestMapping("noticeDetailView.do")
	public String noticeDetailView() {
		return "mypage/noticeDetail";
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



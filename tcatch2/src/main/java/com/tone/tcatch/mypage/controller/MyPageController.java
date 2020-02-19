package com.tone.tcatch.mypage.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.attachment.vo.Attachment;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.service.MyPageService;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.mypage.model.vo.Ticket;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService mpService;
	
	/*@RequestMapping("enterMyPage.do")
	public String enterMypage() {
		
		return "mypage/firstPage";
	}*/
	
	@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> recentHistoryList = mpService.selectRecentHistoryList(loginUser.getId());
		//ArrayList<Ticket> recentViewList = mpService.selectRecentViewList(loginUser.getId());
		//ArrayList<Performance> recentInterestList = mpService.selectRecentInterestList(loginUser.getId());
		
		/*//공연 사진 
		for (int i = 0; i < recentViewList.size(); i++) {
			Attachment t = mpService.selectPathRename(recentViewList.get(i).getPerformanceId());
			recentViewList.get(i).setPath(t.getPath());
			recentViewList.get(i).setReName(t.getReName());
		}
			
		for (int i = 0; i < recentInterestList.size(); i++) {
			Attachment t = mpService.selectPathRename(recentInterestList.get(i).getId());
			recentInterestList.get(i).setPath(t.getPath());
			recentInterestList.get(i).setReName(t.getReName());
		}*/
		 System.out.println(recentHistoryList);
		 //System.out.println(recentViewList);
		mv.addObject("recentHistoryList",recentHistoryList);
		//mv.addObject("recentTicketList",recentViewList);
		//mv.addObject("recentInterestList",recentInterestList);
		mv.setViewName("mypage/firstPage");
		return mv;
	}
	
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
		
		ArrayList<Alarm> alarmList = mpService.selectAlarmList(loginUser.getId());
		
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
	
	@RequestMapping("mInformationSetting.do")
	public String mInformationSetting() {
		
		return "mypage/informationSetting";
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
	
	@RequestMapping("mupdate.do")
	public String memberUpdate(Member m, Model model,
							   @RequestParam("post") String post,
							   @RequestParam("address1") String addr1,
							   @RequestParam("address2") String addr2,
							   RedirectAttributes rd) {
		
		m.setAddress(post+","+addr1+","+addr2);
		
		int result = mpService.updateMember(m); 
		
		if(result > 0) {
			rd.addFlashAttribute("msg", "회원정보가 수정 되었습니다.");
			model.addAttribute("loginUser", m);
			return "redirect:mInformationSetting.do";
		}else {
			model.addAttribute("msg", "회원 가입 실패");
			return "common/errorPage";
		}
	}
	
	
	/*@RequestMapping("mdelete.do")
	public String memberDelete(String id, Model model, SessionStatus status, RedirectAttributes rd) {
		
		int result = mpService.deleteMember(id); 
		
		if(result>0) {
			rd.addFlashAttribute("msg", "회원 탈퇴가 완료 되었습니다.");
			status.setComplete();
			return "redirect:home.do";
		}else {
			model.addAttribute("msg", "회원 탈퇴 실패");
			return "common/errorPage";
		}
	}*/
	
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



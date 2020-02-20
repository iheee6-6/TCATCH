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

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.exception.MypageException;
import com.tone.tcatch.mypage.model.service.MyPageService;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.mypage.model.vo.Performance;
import com.tone.tcatch.ticket.model.vo.Ticket;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService mpService;
	
	@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv, HttpSession session,Model model) {
		Member loginUser = new Member();
		loginUser.setId("ㅇㅇ");
		loginUser.setName("하하");
		//Member loginUser = (Member)session.getAttribute("loginUser");
		session.setAttribute("loginUser", loginUser);
		model.addAttribute("loginUser", loginUser);
		
		ArrayList<Ticket> recentHistoryList = mpService.selectRecentHistoryList(loginUser.getId());
		ArrayList<Ticket> recentViewList = mpService.selectRecentViewList(loginUser.getId());
		ArrayList<Performance> recentInterestList = mpService.selectRecentInterestList(loginUser.getId());
		
		
		 System.out.println(recentHistoryList);
		 System.out.println(recentViewList);
		 System.out.println(recentInterestList);
		mv.addObject("recentHistoryList",recentHistoryList);
		mv.addObject("recentTicketList",recentViewList);
		mv.addObject("recentInterestList",recentInterestList);
		mv.setViewName("mypage/firstPage");
		return mv;
	}
	
	
	@RequestMapping("checknCancel.do")
	public ModelAndView checknCancel(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> ticketList = mpService.selectTicketList(loginUser.getId());
		
		mv.addObject("ticketList",ticketList);
		mv.setViewName("mypage/checkNcancel");
		return mv;
	}
	
	@RequestMapping("tDetail.do")
	public ModelAndView cncDetail(ModelAndView mv, HttpSession session,int tNo ) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		Ticket ticket = mpService.selectTicketDetail(loginUser.getId(),tNo);
		
		mv.addObject("ticket",ticket);
		mv.setViewName("mypage/cNcDetail");
		return mv;
	}
	
	
	
	@RequestMapping("interestPerformance.do")
	public ModelAndView interestPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Performance> interestList = mpService.selectInterestPerformanceList(loginUser.getId());
		
		mv.addObject("interestList",interestList);
		mv.setViewName("mypage/interestPerformance");
		return mv;
	}
	
	@RequestMapping("deleteInterest.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, ArrayList<String> dInterest) throws MypageException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int result=0;
		for(int i =0;i<dInterest.size();i++)
			result += mpService.deleteInterest(loginUser.getId(),dInterest.get(i));
		
		if(result>0)
			mv.setViewName("redirect:interestPerformance.do");
		else
			throw new MypageException("관심공연삭제 실패");
		return mv;
	}
	
	@RequestMapping("insertInterest.do")
	public ModelAndView insertInterest(ModelAndView mv, HttpSession session, int pNo) throws MypageException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.insertInterest(loginUser.getId(),pNo);
		
		if(result>0)
		mv.setViewName("redirect:interestPerformance.do");
		else
			throw new MypageException("관심공연 추가 실패");
		return mv;
	}
	
	
	@RequestMapping("alarmList.do")
	public ModelAndView alarmList(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Alarm> alarmList = mpService.selectAlarmList(loginUser.getId());
		
		mv.addObject("alarmList",alarmList);
		mv.setViewName("mypage/alarmList");
		return mv;
	}
	
	@RequestMapping("deleteAlarm.do")
	public ModelAndView deleteAlarm(ModelAndView mv, HttpSession session, ArrayList<String> dAlarm ) throws MypageException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int result=0;
		for(int i=0;i<dAlarm.size();i++) {
		 result+= mpService.deleteAlarm(loginUser.getId(),dAlarm.get(i));
		}
		if(result>0) 
		mv.setViewName("redirect:alarmList.do");
		
		else 
			throw new MypageException("게시글 전체 조회 실패!!");
		
		return mv;
	}
	
	@RequestMapping("insertAlarm.do")
	public ModelAndView insertAlarm(ModelAndView mv, HttpSession session, int aNo) throws MypageException {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.insertAlarm(loginUser.getId(),aNo);
		
		if(result>0)
		mv.setViewName("redirect:alarmList.do");
		else
			throw new MypageException("알림 추가 실패");
		return mv;
	}
	
	
	@RequestMapping("viewPerformance.do")
	public ModelAndView viewPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> viewPerformanceList = mpService.selectViewPerformanceList(loginUser.getId());
		
		mv.addObject("viewPerformanceList",viewPerformanceList);
		mv.setViewName("mypage/viewPerformance");
		return mv;
	}
	
	/*@RequestMapping("refund.do")
	public ModelAndView refund(ModelAndView mv, HttpSession session,int tId ) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int result = mpService.refundTicket(loginUser.getId(),tId);
		
		mv.setViewName("redirect:checknCancel.do");
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
	
	
	
	
	@RequestMapping("mInformationSetting.do")
	public String mInformationSetting() {
		
		return "mypage/informationSetting";
	}
	
	@RequestMapping("memberUpdateView.do")
	public String memberUpdateView() {
		
		return "mypage/memberUpdateForm";
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



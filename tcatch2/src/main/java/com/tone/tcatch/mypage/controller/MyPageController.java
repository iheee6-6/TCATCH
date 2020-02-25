package com.tone.tcatch.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.exception.MypageException;
import com.tone.tcatch.mypage.model.service.MyPageService;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.ticket.model.vo.Ticket;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService mpService;

	@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv, HttpSession session, Model model) {
		Member loginUser = new Member();
		loginUser.setId("ㅇㅇ");
		loginUser.setName("하하");
		loginUser.setEmail("tcatch@kh.com");
		loginUser.setAddress("1232,경기도 군포시 고산로 185번길,105동 12302호");
		loginUser.setPhone("010-232-3222");
		loginUser.setGender("M");

		// Member loginUser = (Member)session.getAttribute("loginUser");
		session.setAttribute("loginUser", loginUser);
		model.addAttribute("loginUser", loginUser);

		ArrayList<Ticket> recentHistoryList = mpService.selectRecentHistoryList(loginUser.getId());
		ArrayList<Ticket> recentViewList = mpService.selectRecentViewList(loginUser.getId());
		ArrayList<ArtDetail> recentInterestList = mpService.selectRecentInterestList(loginUser.getId());

		System.out.println(recentHistoryList);
		System.out.println(recentViewList);
		System.out.println(recentInterestList);
		mv.addObject("recentHistoryList", recentHistoryList);
		mv.addObject("recentTicketList", recentViewList);
		mv.addObject("recentInterestList", recentInterestList);
		mv.setViewName("mypage/firstPage");
		return mv;
	}

	@RequestMapping("checknCancel.do")
	public ModelAndView checknCancel(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Ticket> ticketList = mpService.selectTicketList(loginUser.getId());

		mv.addObject("ticketList", ticketList);
		mv.setViewName("mypage/checkNcancel");
		return mv;
	}

	@RequestMapping("tDetail.do")
	public ModelAndView cncDetail(ModelAndView mv, HttpSession session, int tNo) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		Ticket ticket = mpService.selectTicketDetail(loginUser.getId(), tNo);

		mv.addObject("ticket", ticket);
		mv.setViewName("mypage/cNcDetail");
		return mv;
	}

	/*
	 * public void setDateFormat(Ticket t) { SimpleDateFormat format = new
	 * SimpleDateFormat("yyyy.MM.dd : aaa hh:mm");
	 * t.settDate(format.format(t.gettDate())); }
	 */

	@RequestMapping("interestPerformance.do")
	public ModelAndView interestPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<ArtDetail> interestList = mpService.selectInterestPerformanceList(loginUser.getId());

		mv.addObject("interestList", interestList);
		mv.setViewName("mypage/interestPerformance");
		return mv;
	}

	@RequestMapping("deleteInterest.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, ArrayList<String> dInterest)
			throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int result = 0;
		for (int i = 0; i < dInterest.size(); i++)
			result += mpService.deleteInterest(loginUser.getId(), dInterest.get(i));

		if (result > 0)
			mv.setViewName("redirect:interestPerformance.do");
		else
			throw new MypageException("관심공연삭제 실패");
		return mv;
	}

	@RequestMapping("insertInterest.do")
	public ModelAndView insertInterest(ModelAndView mv, HttpSession session, int pNo) throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");

		int result = mpService.insertInterest(loginUser.getId(), pNo);

		if (result > 0)
			mv.setViewName("redirect:interestPerformance.do");
		else
			throw new MypageException("관심공연 추가 실패");
		return mv;
	}

	@RequestMapping("alarmList.do")
	public ModelAndView alarmList(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Alarm> alarmList = mpService.selectAlarmList(loginUser.getId());

		mv.addObject("alarmList", alarmList);
		mv.setViewName("mypage/alarmList");
		return mv;
	}

	@RequestMapping("deleteAlarm.do")
	public ModelAndView deleteAlarm(ModelAndView mv, HttpSession session, ArrayList<String> dAlarm)
			throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int result = 0;
		for (int i = 0; i < dAlarm.size(); i++) {
			result += mpService.deleteAlarm(loginUser.getId(), dAlarm.get(i));
		}
		if (result > 0)
			mv.setViewName("redirect:alarmList.do");

		else
			throw new MypageException("알림 삭제 실패!!");

		return mv;
	}

	@RequestMapping("insertAlarm.do")
	public ModelAndView insertAlarm(ModelAndView mv, HttpSession session, int aNo) throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");

		int result = mpService.insertAlarm(loginUser.getId(), aNo);

		if (result > 0)
			mv.setViewName("redirect:alarmList.do");
		else
			throw new MypageException("알림 추가 실패");
		return mv;
	}

	@RequestMapping("viewPerformance.do")
	public ModelAndView viewPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Ticket> viewPerformanceList = mpService.selectViewPerformanceList(loginUser.getId());

		mv.addObject("viewPerformanceList", viewPerformanceList);
		mv.setViewName("mypage/viewPerformance");
		return mv;
	}

	/*@RequestMapping("searchView.do")
	public void searchView(HttpServletResponse response, HttpSession session, Date sd, Date ed, String artType,
			String pName) throws IOException {
		Member loginUser = (Member) session.getAttribute("loginUser");
		PrintWriter out = response.getWriter();
		ArrayList<Ticket> tList = mpService.searchView(loginUser.getId(), sd, ed, artType, pName);
		
	}*/

	@RequestMapping("refund.do")
	public ModelAndView refund(ModelAndView mv, HttpSession session, int tId) throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");

		int result = mpService.refundTicket(loginUser.getId(), tId);
		if (result > 0) {
			session.setAttribute("msg", "예매취소 요청이 완료되었습니다. 관리자의 승인에 의해 이루어집니다.");
			mv.setViewName("redirect:checknCancel.do");
		} else
			throw new MypageException("예매취소 요청 실패");
		return mv;
	}

	@RequestMapping("noticeView.do")
	public ModelAndView noticeView(ModelAndView mv) {

		ArrayList<Art> noticeList = mpService.selectNoticeList();

		mv.addObject("noticeList", noticeList);
		mv.setViewName("mypage/notice");
		return mv;
	}

	@RequestMapping("noticeDetailView.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, int nId) {

		Art notice = mpService.selectNotice(nId);

		mv.addObject("notice", notice);
		mv.setViewName("mypage/noticeDetail");
		return mv;
	}

	@RequestMapping("mInformationSetting.do")
	public String mInformationSetting() {

		return "mypage/informationSetting";
	}

	@RequestMapping("memberUpdateView.do")
	public String memberUpdateView() {

		return "mypage/memberUpdateForm";
	}

	@RequestMapping("memupdate.do")
	public String memberInsert(Member m, @RequestParam("post") String post, @RequestParam("address1") String address1,
			@RequestParam("address2") String address2, @RequestParam("phone1") String phone1,
			@RequestParam("phone2") String phone2, @RequestParam("phone3") String phone3, Model model,
			RedirectAttributes rd) {

		m.setAddress(post + "," + address1 + "," + address2);
		m.setPhone(phone1 + "-" + phone2 + "-" + phone3);

		int result = mpService.updateMember(m);

		if (result > 0) {
			rd.addFlashAttribute("msg", "회원정보 수정이 정상적으로 이루어졌습니다. ");
			return "redirect:mInformationSetting.do";
		} else {
			model.addAttribute("msg", "회원정보 수정 실패!!");
			return "common/errorPage";
		}

	}

	/*
	 * @RequestMapping("mdelete.do") public String memberDelete(String id, Model
	 * model, SessionStatus status, RedirectAttributes rd) {
	 * 
	 * int result = mpService.deleteMember(id);
	 * 
	 * if(result>0) { rd.addFlashAttribute("msg", "회원 탈퇴가 완료 되었습니다.");
	 * status.setComplete(); return "redirect:home.do"; }else {
	 * model.addAttribute("msg", "회원 탈퇴 실패"); return "common/errorPage"; } }
	 */

	@Scheduled(cron = "0 59 15 * * *")
	public void test() {
		/*
		 * Calendar datetime = Calendar.getInstance();
		 * datetime.set(Calendar.HOUR_OF_DAY, stime); datetime.set(Calendar.MINUTE,
		 * smin); datetime.set(Calendar.SECOND, 0); datetime.set(Calendar.MILLISECOND,
		 * 0);
		 * 
		 * Timer timer = new Timer(); timer.schedule(new runTask(), datetime.getTime(),
		 * 1000*86400);
		 */

		System.out.println("@Scheduled 테스트");
	}
}

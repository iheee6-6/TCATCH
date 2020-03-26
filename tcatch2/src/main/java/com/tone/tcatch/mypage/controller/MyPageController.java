package com.tone.tcatch.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.exception.MypageException;
import com.tone.tcatch.mypage.model.service.MyPageService;
import com.tone.tcatch.mypage.model.vo.Alarm;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.common.Pagination;
import com.tone.tcatch.ticket.model.vo.Ticket;

@SessionAttributes({"loginUser","msg"})
@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService mpService;

	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping("enterMyPage.do")
	public ModelAndView enterMypage(ModelAndView mv, HttpSession session) {
	
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		ArrayList<Ticket> recentHistoryList = mpService.selectRecentHistoryList(loginUser.getId());
		ArrayList<Ticket> recentViewList = mpService.selectRecentViewList(loginUser.getId());
		ArrayList<Alarm> recentInterestList = mpService.selectRecentInterestList(loginUser.getId());
		
		if(!recentViewList.isEmpty() ||!recentInterestList.isEmpty() ) {
			ArrayList<Integer> imageList = new ArrayList<Integer>();
			
			if(!recentViewList.isEmpty()&&!recentInterestList.isEmpty()) {
		
				for(int i=0;i<recentViewList.size();i++) {
					imageList.add(recentViewList.get(i).getArtNo());
				}
				
				for(int i=0;i<recentInterestList.size();i++) {
					for(int j=0;j<imageList.size();j++) {
						if(recentInterestList.get(i).getArtNo()==imageList.get(j)) {
							break;
						}
						imageList.add(recentInterestList.get(i).getArtNo());
					}	
				}
			}else if(!recentViewList.isEmpty()) {
				for(int i=0;i<recentViewList.size();i++) {
					imageList.add(recentViewList.get(i).getArtNo());
				}
			}else {
				for(int i=0;i<recentInterestList.size();i++) {
					imageList.add(recentInterestList.get(i).getArtNo());
				}
			}
		
		
			
			ArrayList<Img> artImgList= mpService.selectImgList(imageList);
			System.out.println("img"+artImgList);
			mv.addObject("imgList", artImgList);
		}
		
		
		System.out.println("h"+recentHistoryList);
		System.out.println("v"+recentViewList);
		System.out.println("i"+recentInterestList);
		mv.addObject("recentHistoryList", recentHistoryList);
		mv.addObject("recentViewList", recentViewList);
		mv.addObject("recentInterestList", recentInterestList);
		mv.setViewName("mypage/firstPage");
		return mv;
	}

	@RequestMapping("checknCancel.do")
	public ModelAndView checknCancel(ModelAndView mv, HttpSession session,
			@RequestParam(value="page",required=false)Integer page) {
		
		int currentPage = page != null ? page : 1;
		
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Ticket> ticketList = mpService.selectTicketList(loginUser.getId(),currentPage);

		System.out.println(currentPage+" "+Pagination.getPageInfo());
		mv.addObject("ticketList", ticketList);
		mv.addObject("pi", Pagination.getPageInfo());
		mv.setViewName("mypage/checkNcancel");
		return mv;
	}

	@RequestMapping("tDetail.do")
	public ModelAndView cncDetail(ModelAndView mv, HttpSession session, int tNo) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		Ticket ticket = mpService.selectTicketDetail(loginUser.getId(), tNo);
		
		System.out.println("t"+ticket);
		mv.addObject("ticket", ticket);
		mv.setViewName("mypage/cNcDetail");
		return mv;
	}

	@RequestMapping("interestPerformance.do")
	public ModelAndView interestPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Alarm> interestList = mpService.selectInterestPerformanceList(loginUser.getId());
		System.out.println(interestList);
		if(!interestList.isEmpty()) {
			ArrayList<Integer> imageList = new ArrayList<>();
			for(Alarm a:interestList)
				imageList.add(a.getArtNo());
			ArrayList<Img> artImgList= mpService.selectImgList(imageList);
			System.out.println("img"+artImgList);
			mv.addObject("imgList", artImgList);
		}
		
		System.out.println("inp  "+interestList);
		mv.addObject("interestList", interestList);
		mv.setViewName("mypage/interestPerformance");
		return mv;
	}

	@RequestMapping("deleteInterest.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, 
			@RequestParam(value="interestP", required=false)ArrayList<String> dInterest)
			throws MypageException {
		System.out.println(dInterest);
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

	@RequestMapping("alarmList.do")
	public ModelAndView alarmList(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");

		ArrayList<Alarm> alarmList = mpService.selectAlarmList(loginUser.getId());
		
		System.out.println("inp  "+alarmList);
		mv.addObject("alarmList", alarmList);
		mv.setViewName("mypage/alarmList");
		return mv;
	}

	@RequestMapping("deleteAlarm.do")
	public ModelAndView deleteAlarm(ModelAndView mv, HttpSession session,
			@RequestParam(value="chkAlarm", required=false) ArrayList<String> dAlarm)
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

	@RequestMapping(value="insertAlarm.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String insertAlarm(HttpSession session, int aNo) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int checkDup = mpService.selectAlarmUser(loginUser.getId(),aNo);
		System.out.println(checkDup);
		if(checkDup>0) {
			return "이미 등록되어있습니다. [마이페이지-> 알림설정]에서 확인하실 수 있습니다!";
		}
		int result = mpService.insertAlarm(loginUser.getId(), aNo);
		if (result > 0) {
			return"알림 등록이 완료되었습니다. [마이페이지-> 알림설정]에서 확인하실 수 있습니다!";
		}
		return "실패!";
	}

	@RequestMapping("viewPerformance.do")
	public ModelAndView viewPerformance(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		String id= loginUser.getId();
		String d= mpService.selectAView(id);
		int vCount= mpService.selectvCount(id);
		
		System.out.println("="+d+" "+vCount);
		mv.addObject("aDate", d);
		mv.addObject("vCount", vCount);
		
		mv.setViewName("mypage/viewPerformance");
		return mv;
	}

	
	@RequestMapping(value="searchView.do",produces = "application/text; charset=utf8")
	public String searchView(HttpServletResponse response, HttpSession session, 
			 String sdate,String edate,String pType,
			String pName,Model model,
			@RequestParam(value="page",required=false)Integer page) throws IOException {
		System.out.println(sdate+" ~ "+edate);
		if(pName=="") {
			pName="null";
		}
		System.out.println(pType+" , "+pName);
		
		int currentPage = page != null ? page : 1;
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		ArrayList<Ticket> tList = mpService.searchView(loginUser.getId(), sdate, edate, pType, pName,currentPage);
		
		System.out.println("hihi "+tList);
		model.addAttribute("viewPerformanceList", tList);
		model.addAttribute("pi", Pagination.getPageInfo());
		return "mypage/viewPSearch";
	}

	@RequestMapping("refund.do")
	public ModelAndView refund(ModelAndView mv, HttpSession session, 
			@RequestParam(value="tNo", required=false)int tNo) throws MypageException {
		Member loginUser = (Member) session.getAttribute("loginUser");

		int result = mpService.refundTicket(loginUser.getId(), tNo);
		if (result > 0) {
			session.setAttribute("msg", "예매취소 요청이 완료되었습니다. 관리자의 승인에 의해 이루어집니다.");
			mv.setViewName("rediret:checknCancel.do");
		} else
			throw new MypageException("예매취소 요청 실패");
		return mv;
	}

	@RequestMapping("noticeView.do")
	public ModelAndView noticeView(ModelAndView mv,
			@RequestParam(value="page", required=false) Integer page) {
			
		int currentPage = page != null ? page : 1;
		
		ArrayList<ArtDetail> noticeList = mpService.selectNoticeList(currentPage);
		System.out.println(noticeList);
		if(!noticeList.isEmpty()) {
			ArrayList<Integer> list= new ArrayList<>();
			for(ArtDetail a:noticeList) {
				list.add(a.getArtNo());
			}
			ArrayList<Img> imgList= mpService.selectImgList(list);
			System.out.println(imgList);
			mv.addObject("imgList", imgList);
		}
		System.out.println( Pagination.getPageInfo());
		mv.addObject("noticeList", noticeList);
		mv.addObject("pi", Pagination.getPageInfo());
		mv.setViewName("mypage/notice");
			
		return mv;
	}

	@RequestMapping("noticeDetailView.do")
	public ModelAndView noticeDetailView(ModelAndView mv, HttpSession session, int artNo) {

		ArtDetail notice = mpService.selectNotice(artNo);
		
		if(notice != null) {
			Img img= mpService.selectImgOne(notice.getArtNo());
			mv.addObject("img", img);
		}
		System.out.println(notice);
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
		
		System.out.println(m);
		int result = mpService.updateMember(m);

		if (result > 0) {
			rd.addFlashAttribute("msg", "회원정보 수정이 정상적으로 이루어졌습니다. ");
			return "redirect:mInformationSetting.do";
		} else {
			model.addAttribute("msg", "회원정보 수정 실패!!");
			return "common/errorPage";
		}

	}

	
	  @RequestMapping("memDelete.do") 
	  public String memberDelete( Model model, SessionStatus status,HttpSession session, RedirectAttributes rd) {
		 Member loginUser = (Member)session.getAttribute("loginUser");
		  
		 int result = mpService.deleteMember(loginUser.getId());
		 
		 System.out.println("탈퇴");
		  if(result>0) { 
			  rd.addFlashAttribute("msg", "회원 탈퇴가 완료 되었습니다.");
			  status.setComplete(); 
			  return "redirect:home.do";
		 }else {
			 model.addAttribute("msg", "회원 탈퇴 실패"); 
			 return "common/errorPage"; 
		 } 
	}
	

	//@Scheduled(cron = "0 0 * * * *") //매일 매시 정각마다(티켓팅은 정각에 이루어지기 때문)
	  @Scheduled(cron = "0 * 17 * * *")
	  public void test() {
		java.util.Date sysd = new java.util.Date();
		Timestamp d = new Timestamp(sysd.getTime());
		System.out.println(d);
		ArrayList<Alarm> artList = mpService.confirmTicketingTime(d);

		if (!artList.isEmpty()) {
			System.out.println("ddd");
			for (Alarm art : artList) {
				ArrayList<Member> mList = mpService.selectAlarmMember(art.getArtNo());
				System.out.println(art.getArtNo());
				if(!mList.isEmpty()) {
					
					for (Member mem : mList) {
						sendEmail(mem.getEmail(), art.getArtTitle());
					}
				}
			}
		} else {
			System.out.println("티켓팅 1시간 전인 공연 없음.");
		}
		System.out.println("완료");

	}

	public void sendEmail(String email, String artTitle) {
		System.out.println("wow");
		String setfrom = "tcatch@gmail.com";
		String tomail = email; // 받는 사람 이메일
		String title = "★ "+artTitle + "  티켓팅 알림입니다.!!! ★";
		String content = "<html><body><div style='text-align:center;width:350px;height:350px;margin:10px;padding:20px;border:2px solid black'><h1>"+artTitle+ " 티켓팅 한시간 전 입니다!</h1><p>잊지말고 티켓팅하세요~ 좋은 자리 잡으시길 바랍니다.</p>"
				+"<img src=\'cid:logo.png\' width='300px'></div></body></html>"; // 내용
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(setfrom);
			messageHelper.setTo(tomail);
			messageHelper.setSubject(title);
			messageHelper.setText(content,true);
			FileSystemResource file = new FileSystemResource(new File("C:/Users/USER/git/TCATCH/tcatch2/src/main/webapp/resources/images/common/logo.png"));
		    messageHelper.addInline("logo.png", file);

			mailSender.send(message);
			System.out.println("이메일 전송 완료");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

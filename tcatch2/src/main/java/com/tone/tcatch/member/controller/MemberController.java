package com.tone.tcatch.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.member.model.exception.MemberException;
import com.tone.tcatch.member.model.service.MemberService;
import com.tone.tcatch.member.model.vo.Member;


@SessionAttributes({"loginUser","msg"})
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("adminList.do")
	public ModelAndView adminlist(ModelAndView mv) {
		
		ArrayList<Member> list = mService.memberList();
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/admin2");
		}else {
			throw new MemberException("회원 리스트 조회 실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String memberLogin(Member m, Model model,RedirectAttributes rd,HttpSession session) { 
		// HttpSession 커맨드 객체 생략
		Member loginUser = mService.loginMember(m);
		if(loginUser != null) {
			// 로깅 수업 시 작성 2_3.
			if(logger.isDebugEnabled())
				// logger의 레벨이 DEBUG인지 확인하는 조건 문
				// logginEvent로 발생되는 시간을 절약
				logger.info(loginUser.getId() + " 로그인");
			
			// 조회 성공 시 Model에 loginUser 정보를 담는다.
			model.addAttribute("loginUser", loginUser);
			// -> 이렇게만 작성하면 requestScope에만 담김
			// 가장 위로 올라가서 @SessionAttributes라는 어노테이션을 추가한다.
			return "redirect:home.do";
		} else {
			// Exception을 이용하여 errorPage 연결
			/*session.setAttribute("msg", "로그인 실패! 아이디,비밀번호를 확인해주세요.");*/
			rd.addFlashAttribute("msg", "로그인 실패! 아이디,비밀번호를 확인해주세요.");
			return "redirect:loginPage.do";
			// RuntimeException으로 상속 받았을 때의 차이점
			// -> throws를 넘길 필요 없으며 try-catch로 잡을 필요도 없음
			
			// 에러페이지로 연결하는 방법 -> web.xml에 공용 에러 페이지를 등록하여
			// 모든 예외가 발생 시 그 페이지가 뜨게끔 설정
		}
		
	} 
	
	@RequestMapping("/loginPage.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("enrollView.do")
	public String enrollView() {
		return "member/memberJoin";
	}
	
	// 회원 가입 폼 작성 이후 요청을 받아줄 컨트롤러
		@RequestMapping("minsert.do")
		public String memberInsert(Member m, 
				@RequestParam("post") String post,
				@RequestParam("address1") String address1,
				@RequestParam("address2") String address2,
				@RequestParam("phone1") String phone1,
				@RequestParam("phone2") String phone2,
				@RequestParam("phone3") String phone3,
				Model model,
				RedirectAttributes rd
				) {
			
			//System.out.println("member = " + m);
			//System.out.println(post + "," + address1 + "," + address2);
			
			// 한글 인코딩은 스프링에서 제공하는 필터를 이용해서 간단히 처리 할수 있음
			// web.xml로 이동 !! 
			
			// 주소값은 , 구분자를 두고 저장
			m.setAddress(post + "," + address1 + "," + address2);
			m.setPhone(phone1 + "-" + phone2 + "-" +phone3);
			
			int result = mService.insertMember(m);
			
			// RedirectAttributes : Redirect시 데이터를 전달할 수 있는 객체
			// RedirectAttributes.addFlashAttribute()
			// : Redirect로 데이터 전달 시 URL에 데이터가 노출되지 않게 하는 메소드
			
			if(result > 0) {
				//model.addAttribute("msg", "회원가입이 완료 되었습니다. 로그인 해주세요.");
				rd.addFlashAttribute("msg", "회원가입이 완료 되었습니다. 로그인 해주세요.");
				return "redirect:home.do";
			}else {
				model.addAttribute("msg", "회원 가입 실패!!");
				return "common/errorPage";
			}
			
		}
		
		
		@RequestMapping("dupid.do")
		public ModelAndView idDuplicateCheck(ModelAndView mv, String id) {
			
			boolean isUsable = mService.checkIdDup(id) == 0 ? true : false;
			
			Map map = new HashMap();
			map.put("isUsable", isUsable);
			
			mv.addAllObjects(map);
			
			mv.setViewName("jsonView");
			
			return mv; // json객체로 넘어감
		}
		
		@RequestMapping("logout.do")
		public String logout(SessionStatus status) {
			// 로그아웃 처리를 위해 커맨드 객체로 세션의 상태를 관리할 수 있는 SessionStatus 객체가 필요
			
			status.setComplete();
			// 세션의 상태를 확정 지어주는 메소드 호출이 필요함.
			
			// return "home"; : forward 방식
			return "redirect:home.do"; // redirect 방식
		}
		
		@RequestMapping("mdelete.do")
		public String memberDelete(String id, Model model, SessionStatus status, RedirectAttributes rd) {
			
			int result = mService.deleteMember(id); 
			
			if(result>0) {
				rd.addFlashAttribute("msg", "회원 탈퇴가 완료 되었습니다.");
				status.setComplete();
				return "redirect:home.do";
			}else {
				model.addAttribute("msg", "회원 탈퇴 실패");
				return "common/errorPage";
			}
		}
	
		
		@RequestMapping("mupdate.do")
		public String memberUpdate(Member m, Model model,
								   @RequestParam("post") String post,
								   @RequestParam("address1") String addr1,
								   @RequestParam("address2") String addr2,
								   RedirectAttributes rd) {
			
			m.setAddress(post+","+addr1+","+addr2);
			
			int result = mService.updateMember(m);
			
			if(result > 0) {
				rd.addFlashAttribute("msg", "회원정보가 수정 되었습니다.");
				model.addAttribute("loginUser", m);
				return "redirect:home.do";
			}else {
				model.addAttribute("msg", "회원 가입 실패");
				return "common/errorPage";
			}
		}
		@RequestMapping("memberOut.do")
		public String memberOut(@RequestParam("product_No") String[] product_No, @RequestParam("status") String status) {
			Member m = new Member();
			int result = 0;
			
			for(int i= 0; i<product_No.length; i++) {
				m.setNo(Integer.parseInt(product_No[i]));
				m.setmStatus(status);
				result = mService.memberOut(m);
			}
			
			
			System.out.println("product" + product_No);
			
			if(result>0) {
				return "redirect:adminList.do";
			}else {
				throw new MemberException("회원 탈퇴 실패!");
			}

		}
		
		@RequestMapping(value = "email.do")
		@ResponseBody
		public String mailSending(HttpServletRequest request, String email) {
			String setfrom = "tcatch";
			String tomail = email; // 받는 사람 이메일
			String title = "회원가입 이메일 인증 서비스(TCATCH)"; // 제목

			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for (int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
				switch (rIndex) {
				case 0:
					// a-z
					temp.append((char) ((int) (rnd.nextInt(26)) + 97));
					break;
				case 1:
					// A-Z
					temp.append((char) ((int) (rnd.nextInt(26)) + 65));
					break;
				case 2:
					// 0-9
					temp.append((rnd.nextInt(10)));
					break;
				}
			}

			String content =temp.toString(); // 내용
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(new InternetAddress(setfrom, "tcatch")); // 보내는사람 생략하거나 하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용
				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}

			return content;
		}
	

}

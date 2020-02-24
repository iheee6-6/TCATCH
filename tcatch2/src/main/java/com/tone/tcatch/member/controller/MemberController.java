package com.tone.tcatch.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.member.model.exception.MemberException;
import com.tone.tcatch.member.controller.MemberController;
import com.tone.tcatch.member.model.service.MemberService;


@SessionAttributes({"loginUser","msg"})
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String memberLogin(Member m, Model model) { 
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
			return "common/main";
		} else {
			// Exception을 이용하여 errorPage 연결
			throw new MemberException("로그인 실패!!");
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
	

}

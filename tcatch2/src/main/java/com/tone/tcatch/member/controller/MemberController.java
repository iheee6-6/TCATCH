package com.tone.tcatch.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.member.controller.MemberController;
import com.tone.tcatch.member.model.service.MemberService;


@SessionAttributes({"loginUser","msg"})
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/login.do")
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
				Model model,
				RedirectAttributes rd
				) {
			
			//System.out.println("member = " + m);
			//System.out.println(post + "," + address1 + "," + address2);
			
			// 한글 인코딩은 스프링에서 제공하는 필터를 이용해서 간단히 처리 할수 있음
			// web.xml로 이동 !! 
			
			// 주소값은 , 구분자를 두고 저장
			m.setAddress(post + "," + address1 + "," + address2);
			
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
	
	

}

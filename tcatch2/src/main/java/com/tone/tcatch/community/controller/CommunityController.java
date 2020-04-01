package com.tone.tcatch.community.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.common.Pagination;
import com.tone.tcatch.community.model.CommunityException;
import com.tone.tcatch.community.model.service.CommunityService;
import com.tone.tcatch.community.model.vo.Community;
import com.tone.tcatch.community.model.vo.Reply;
import com.tone.tcatch.community.model.vo.Report;
import com.tone.tcatch.member.model.exception.MemberException;
import com.tone.tcatch.member.model.vo.Member;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService cService;
	
	@Autowired 
	private ArtService aService;

	@RequestMapping("clist.do")
	public ModelAndView communityList(ModelAndView mv,
			@RequestParam(value="page", required = false) Integer page) {
		
		
		int currentPage = page != null ? page : 1;
	
		
		
		ArrayList<Community> list = cService.selectList(currentPage);
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("pi",Pagination.getPageInfo());
			mv.setViewName("community/communityList");
		}else {
			throw new CommunityException("커뮤니티 게시판 조회 실패!");
		}
		return mv;
		
	}
	
	@RequestMapping("cinsertView.do")
	public String communityInsertView() {
		
		
		
		return "community/communityInsert";
	}
	
	@RequestMapping("cupdateView.do")
	public ModelAndView communityUpdateView(ModelAndView mv , int cNo,
			@RequestParam("page") Integer page) {
		
		Community commu = cService.selectCommunity(cNo, true);
		commu.setcContent(commu.getcContent());
		
		mv.addObject("commu",commu).addObject("currentPage",page).setViewName("community/communityUpdate");
		
		return mv;
	}
	@RequestMapping("cupdate.do")
	public ModelAndView communityUpdate(ModelAndView mv , Community c,
			HttpServletRequest request,
			@RequestParam("page") Integer page) {
		System.out.println("c : " + c);
		int result = cService.updateCommunity(c);
		if(result>0) {
			mv.addObject("page",page).setViewName("redirect:clist.do");
		}else {
			throw new CommunityException("커뮤니티 게시글 수정 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping("cinsert.do")
	public String communityInsert(HttpServletRequest request, Community c) {
		
		System.out.println("c : " + c);
		int result = cService.insertCommunity(c);
		if(result > 0) {
			return "redirect:clist.do";
		}else {
			throw new CommunityException("커뮤니티 글 등록 실패");
		}
		
	}
	
	@RequestMapping("cdetail.do")
	public ModelAndView communityDetail(ModelAndView mv , int cNo ,
			@RequestParam("page") Integer page,
			HttpServletRequest request , HttpServletResponse response,RedirectAttributes rd
			) {
		int currentPage = page != null ? page : 1;
		
		Community commu = null;
		
		boolean flag = false;
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("cNo"+cNo)) {
					flag = true;
				}
			}
			
			if(!flag) {
				Cookie c = new Cookie("cNo"+cNo, String.valueOf(cNo));
				c.setMaxAge(1*24*60*60);
				response.addCookie(c);
			}
			commu = cService.selectCommunity(cNo,flag);
		}
		
		if(commu != null) {
			mv.addObject("commu",commu)
			.addObject("currentPage",currentPage)
			.setViewName("community/communityDetail");
		}else {
			throw new CommunityException("커뮤니티 게시글 상세조회 실패");
		}
		
		return mv;
	}
	
	@RequestMapping("cdelete.do")
	public String communityDelete(int cNo,HttpServletRequest request) {
		
		Community c = cService.selectCommunity(cNo, true);
		
		int result = cService.deleteCommunity(cNo);
		
		if(result>0) {
			return "redirect:clist.do";
		}else {
			throw new CommunityException("커뮤니티 게시글 삭제 실패");
		}
		
	}
	
	
	
	@RequestMapping(value="rList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int cNo) {
		ArrayList<Reply> rList = cService.selectReplyList(cNo);
		System.out.println(rList);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		// 시분초 다루고 싶다면 java.util.Date 사용
		return gson.toJson(rList);
	}
	
	@RequestMapping("addReply.do")
	@ResponseBody
	public String addReply(Reply r , HttpSession session , @RequestParam("star") int star) {
		System.out.println("star : " + star);
		Member loginUser = (Member)session.getAttribute("loginUser");
		String rWriter = loginUser.getId();
		
		r.setrWriter(rWriter);
		r.setStar(star);
		
		int result = cService.insertReply(r);
		
		if(result>0) {
			return "success";
		}else {
			throw new CommunityException("댓글 등록 실패!");
		}
		
	}
	
	@RequestMapping("rdelete.do")
	@ResponseBody
	public String deleteReply(int rId) {
		
		int result = cService.deleteReply(rId);
		
		if(result>0) {
			return "success";
		}else {
			throw new CommunityException("댓글 삭제 실패!");
		}
	}
	
	@RequestMapping("dinsert.do")
	public String reportInsert(HttpServletRequest request , Report r,@RequestParam("page") Integer page) {
		System.out.println(r.getReCno());
		System.out.println("report : " + r);
		
		r.setCount(page);
		System.out.println("page : " + r.getCount());
		
		int result = cService.insertReport(r);
		if(result >0 ) {
			return "redirect:cdetail.do?cNo="+r.getReCno()+"&page=" + page;
		}else {
			throw new CommunityException("신고하기 실패");
		}
		
	}
	
	@RequestMapping(value="rArtList.do", produces="application/json; charset=utf-8")
	   @ResponseBody
	   public String getReplyArtList(int artNo) {
	      ArrayList<Reply> rList = cService.getReplyArtList(artNo);
	      System.out.println(rList);
	      Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	      // 시분초 다루고 싶다면 java.util.Date 사용
	      return gson.toJson(rList);
	   }
	
	@RequestMapping(value="report.do")
	public String report(@RequestParam("product_No") String[] product_No,@RequestParam("dNo") int[] dNo) {
		Community c = new Community();
		int result = 0;
		Report d = new Report();
		
		for(int i =0; i<product_No.length; i++) {
			c.setcNo(Integer.parseInt(product_No[i]));
			result = cService.delReport(c);
			cService.updateR(dNo[i]);
		}
		
		
		
		if(result>0) {
			return "redirect:admin3.do";
		}else {
			throw new MemberException("신고 게시글 삭제 실패!");
		}
		
		
	}
	
	@RequestMapping("/admin3.do")
	public ModelAndView admin3(ModelAndView mv) {
		ArrayList<Report> list = cService.selectReport();
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/admin3");
		}else {
			throw new CommunityException("신고목록 출력실패");
		}
		return mv;
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

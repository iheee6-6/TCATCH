package com.tone.tcatch.art.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.art.model.exception.ArtException;
import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Seat;

@Controller
public class ArtController {
	@Autowired 
	private ArtService aService;
	
	
	@RequestMapping("/musical.do")
	public ModelAndView ArtList(ModelAndView mv) {

		ArrayList<Art> list = aService.selectList();
		 
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("musical/musical");
		}else {
			throw new ArtException("�Խñ� ��ü ��ȸ ����!!");
		}
		return mv;
	}
	
	@RequestMapping("/musicalDetail.do")
	public ModelAndView selectArtDetail(ModelAndView mv,int artNo,HttpServletRequest request, HttpServletResponse response) {
		ArtDetail art = null;
		ArtTime aT = null;
		Seat s = null;
		
		boolean flag = false; 
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("artNo"+artNo)) {
					// �ش� �Խñۿ� ���� ��Ű ����(�̹� ���� �Խñ�)
					flag = true;
				}
			}
			
			if(!flag) {
				// ó�� �д� �Խñ��϶�
				Cookie c = new Cookie("artNo"+artNo, String.valueOf(artNo));
				c.setMaxAge(1 * 24 * 60 * 60); // �Ϸ絿�� ��Ű ����
				response.addCookie(c);
			}
			
			art = aService.selectArt(artNo, flag);
			aT = aService.selectATime(artNo);
			s = aService.selectSeatCount(aT.getTimeNo(),artNo);
		}
		
		if(art != null) {
			mv.addObject("art", art);
			mv.addObject("aT", aT);
			mv.setViewName("musical/musicalDetail"); // �޼ҵ� ü�̴� ���
		}else {
			throw new ArtException("�Խñ� ����ȸ ����!!"); 
		}
		return mv;
	}
	@RequestMapping("/searchArt.do") // �˻�
	public String searchArt(String title) {
		ArrayList<Art> list = aService.searchArt(title);
		return "musical/buy";
	}
	

	@RequestMapping("/buy.do")
	public String buy(/*int timeNo*/) {
		//ȸ�� ���� ,�¼� ����
		//ArrayList<Seat> sList = aService.selectSeatList(timeNo); //�¼� �ҷ�����
		return "musical/buy";
	}
	
	
	@RequestMapping("/buyTwo.do")
	public String buyTwo() {
		//���� .
		return "musical/buy_two";
	}
	
	@RequestMapping("/buyEnd")
	public String buyEnd(Seat s) {
		int result = aService.insertSeat(s);
		
		return null;
	}
	
	
}

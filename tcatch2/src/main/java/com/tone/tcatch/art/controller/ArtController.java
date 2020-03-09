package com.tone.tcatch.art.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.art.model.exception.ArtException;
import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
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
		Seat s= null;
		
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
			s = new Seat(aT.getTimeNo() , artNo);
		}
		
		if(art != null) {
			mv.addObject("art", art);
			mv.addObject("aT", aT);
			mv.addObject("s" ,s);
			mv.addObject("allS" , aService.selectSeatAllCount(s));
			mv.addObject("yS", aService.selectSeatYCount(s));
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
	
	

	@RequestMapping("/buy.do") //�¼� ����Ʈ �ҷ�����
	public ModelAndView buy(ModelAndView mv , 
			@RequestParam("artNo") Integer artNo , 
			@RequestParam("timeNo") Integer timeNo) {
		Seat s = new Seat(timeNo , artNo);
		ArrayList<Seat> sList = aService.selectSeatList(s);
		int seatCount = aService.selectSeatAllCount(s);
		if(sList != null) {
			mv.addObject("s" ,s);
			mv.addObject("sList", sList);
			mv.addObject("sCount", seatCount);
			mv.setViewName("musical/buy");
		}else {
			throw new ArtException("�¼� �ҷ����� ����");
		}
		
		return mv;
	}
	
	/*@RequestMapping("/time.do")
	public ModelAndView time(ModelAndView mv)
	{
		return mv;
	}*/
	
	@RequestMapping("/buyTwo.do")
	public ModelAndView buyTwo(int artNo , int timeNo, ModelAndView mv, @RequestParam(value="seatName[]") String seatName) {
		//���� .
		System.out.println("seatName : " + seatName);
		String[] seatList = seatName.split(" ");
		int count = 0;
		
		for(int i = 0  ; i < seatList.length ; i++) {
			System.out.println("seatList["+i+"]" + seatList[i]);
			count ++;
		}
		//"musical/buy_two"
		mv.addObject("artNo",artNo);
		mv.addObject("timeNo",timeNo);
		mv.setViewName("musical/buy_two");
		mv.addObject("count", count);
		mv.addObject("seatName", seatName);
		
		return mv;
	}
	
	@RequestMapping("/buyEnd")
	public String buyEnd(Purchase p) {
		int result = aService.insertPurchase(p);
		
		return null;
	}
	
	@RequestMapping("/insert.do")
	public String artInsertFoem() { //insertForm ���� �̵� 
		
		return "musical/artInsertForm";
	}
	
	@RequestMapping("/insertArt.do")
	public ModelAndView insertArt(HttpServletRequest request, ModelAndView mv /* Art a,*/
		/*	@RequestParam(value="uploadFile", required=false) MultipartFile file*/) { // �������� isnert �� ȸ�� �ֱ� 
		
		Img img = null;
		
		/*if(!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);
			
			if(renameFileName != null) {
				img.setOriginName(file.getOriginalFilename());
				img.setChangeName(renameFileName);
			}
		}
		
		
		String root = request.getSession().getServletContext().getRealPath("/")
		
		//���� ���� ���� ��ġ
		String savePath = root + "/resources/productBoard/";
		
		int result = aService.insertArt(a); */
		
		mv.setViewName("musical/timeInsertForm");
		
		return mv;
	}

	public String saveFile(MultipartFile file, HttpServletRequest request) { //���� ����

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\buploadFiles"; // ���� ��� ����

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); //����Ͻú���
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) 
				+ originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // ���޹��� file�� rename������ ����

		} catch (Exception e) {
			System.out.println("���� ���� ���� : " + e.getMessage());
		}

		return renameFileName;
		

	}
	
	
	
	@RequestMapping("/insertTime.do")
	public String insertTime() { //ȸ�� ����
		
		return "musical/musical";
	}
	
	
}

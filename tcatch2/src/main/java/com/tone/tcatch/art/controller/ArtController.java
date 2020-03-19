package com.tone.tcatch.art.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.tone.tcatch.art.model.exception.ArtException;
import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.art.model.vo.ArtDetail;
import com.tone.tcatch.art.model.vo.ArtTime;
import com.tone.tcatch.art.model.vo.Img;
import com.tone.tcatch.art.model.vo.Purchase;
import com.tone.tcatch.art.model.vo.Seat;
import com.tone.tcatch.mypage.model.vo.Alarm;

@Controller
public class ArtController {
	@Autowired 
	private ArtService aService;

	
	
	@RequestMapping("/concert.do")//콘서트
	public ModelAndView ConcertList(ModelAndView mv) {
		
		ArrayList<Art> list = aService.selectList(1);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("musical/musical");
		}else {
			throw new ArtException("�Խñ� ��ü ��ȸ ����!!");
		}
		return mv;
	}
	
	@RequestMapping("/musical.do")//뮤지컬
	public ModelAndView MusicalList(ModelAndView mv) {

		ArrayList<Art> list = aService.selectList(2);
		 
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("musical/musical");
		}else {
			throw new ArtException("�Խñ� ��ü ��ȸ ����!!");
		}
		return mv;
	}
	@RequestMapping("/drama.do") //연극
	public ModelAndView DramaList(ModelAndView mv) {

		ArrayList<Art> list = aService.selectList(3);
		 
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("musical/musical");
		}else {
			throw new ArtException("�Խñ� ��ü ��ȸ ����!!");
		}
		return mv;
	}
	@RequestMapping("/exhibition.do") //전시회
	public ModelAndView ExhibitionList(ModelAndView mv) {

		ArrayList<Art> list = aService.selectList(0);
		 
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
		ArrayList<ArtTime> aT = null;
		Seat s= null;
		ArrayList<Img> img = null;
		boolean flag = false;
		int like=0;
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("artNo"+artNo)) {
					flag = true;
				}
			}
			
			if(!flag) {
				Cookie c = new Cookie("artNo"+artNo, String.valueOf(artNo));
				c.setMaxAge(1 * 24 * 60 * 60); // 하루
				response.addCookie(c);
			}
			
			art = aService.selectArt(artNo, flag);
			aT = aService.selectATime(artNo);
			img=aService.selectImg(artNo);
			s = new Seat(aT.get(0).getTimeNo() , artNo);
			like = aService.selectCountJjim(artNo);
		}
		
		if(art != null) {
			mv.addObject("like", like);
			mv.addObject("img", img);
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
	//
	
	
	
	
	
	@RequestMapping("/searchArt.do") // �˻�
	public String searchArt(String title) {
		ArrayList<Art> list = aService.searchArt(title);
		return "musical/buy";
	}
	
	

	@RequestMapping("/buy.do") //�¼� ����Ʈ �ҷ�����
	public ModelAndView buy(ModelAndView mv , 
			@RequestParam("artNo") Integer artNo , 
			@RequestParam("timeNo") Integer timeNo) {
		System.out.println("timeNo"+timeNo);
		Seat s = new Seat(timeNo , artNo);
		ArrayList<Seat> sList = aService.selectSeatList(s);
		int seatCount = aService.selectSeatAllCount(s);
		
		
		
		ArrayList<ArtTime> aT = aService.selectATime(artNo);
		
		
		if(sList != null) {
			mv.addObject("s" ,s);
			mv.addObject("sList", sList);
			mv.addObject("sCount", seatCount);
			mv.addObject("aT", aT);
			mv.setViewName("musical/buy");
		}else {
			throw new ArtException("�¼� �ҷ����� ����");
		}
		
		return mv;
	}
	
	@RequestMapping("/buyTwo.do")
	public ModelAndView buyTwo(int artNo , int timeNo, ModelAndView mv, @RequestParam(value="seatName[]") String seatName) {
		//���� .
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
	
	@RequestMapping("/buyEnd") // 구매하기
	public String buyEnd(Purchase p) {
		System.out.println(p);
		aService.insertPurchase(p);
		return "redirect:musical.do";
	}
	
	@RequestMapping("/insert.do")
	public String artInsertFoem() { //insertForm 이동
		
		return "musical/artInsertForm";
	}
	
	
	
	@RequestMapping("/insertArt.do") // 공연 정보 insert
	public String insertArt(HttpServletRequest request, Art a,
		@RequestParam(value="uploadFile", required=false) MultipartFile file,
		@RequestParam(value="uploadFile2", required=false) MultipartFile file2) {
		
		
		Img img = new Img();
		
		int result = aService.insertArt(a); 
		
		if(result > 0) {
			if(!file.getOriginalFilename().equals("")) {
				String renameFileName = saveFile(file, request);
	
				
				if(renameFileName != null) {
					String originName = file.getOriginalFilename();
					img.setOriginName(originName);
					img.setChangeName(renameFileName);
					img.setFileLevel(0);
					String root = request.getSession().getServletContext().getRealPath("resources");
					String savePath = root + "\\images\\art\\";
					img.setFilePath(savePath+renameFileName);
				}
			}
			aService.insertImg(img);
			
			Img img2 = new Img();
			
			if(!file2.getOriginalFilename().equals("")) {
				String renameFileName = saveFile(file2, request);
	
				
				if(renameFileName != null) {
					String originName = file2.getOriginalFilename();
					img2.setOriginName(originName);
					img2.setChangeName(renameFileName);
					img2.setFileLevel(1);
					String root = request.getSession().getServletContext().getRealPath("resources");
					String savePath = root + "\\images\\art\\";
					img2.setFilePath(savePath+renameFileName);
				}
			}
			aService.insertImg(img2);
		
		
		
			return "musical/timeInsertForm";
		}else {
			throw new ArtException("실패!");
		}	

	}

	
	public String saveFile(MultipartFile file, HttpServletRequest request) { //���� ����

		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\art"; // 저장공간

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS"); //파일 이름 변경 
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) 
				+ originFileName.substring(originFileName.lastIndexOf("."));
		
		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // 저장

		} catch (Exception e) {
			System.out.println("저장 실패 : " + e.getMessage());
		}
		return renameFileName;
	}
	
	
	
	@RequestMapping("/insertTime.do")
	public String insertTime(ArtTime aT,
			@RequestParam("Time")String time) { //회차 insert
		
			System.out.println(time);
			
			String date3 = time.replaceAll("-", "");
			String date2 = date3.replaceAll("T", "");
			String date = date2.replaceAll(":", "");
			
			System.out.println(date);

			aT.setDateTime(date);
			System.out.println(date);
			int result = aService.inserArtTime(aT);
			
			return "redirect:musical.do";
	}

	@RequestMapping("timeInsertForm.do")
	public String a() {
		return "musical/timeInsertForm";
	}
	
	@RequestMapping("jjim.do")
	@ResponseBody
	public String jj(Alarm a , @RequestParam("flag")int flag)
	{
		int result=0 ;
		String msg ="";
		if(flag == 0) { //찜 하기
			 result = aService.insertJjim(a);
			 if(result < 1) {
				 msg="Infail";
			 }else {
				 msg="InSuccess";
			 }
		}else if(flag == 1) { //찜 취소
			 result = aService.deleteJjim(a);
			 if(result < 1) {
				 msg="Defail";
			 }else {
				 msg="DeSuccess";
			 }
		}
		return msg;
	}
	
	@RequestMapping(value="selectJjim.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int artNo , int no) {
		Alarm a = new Alarm();
		a.setArtNo(artNo);
		a.setAlarmNo(no);
		int result = aService.selectjjim(a);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		// 시분초 다루고 싶다면 java.util.Date 사용
		return gson.toJson(result);
	}
	
	
}

package com.tone.tcatch.art.controller;

import java.io.File;
import java.text.ParseException;
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
			throw new ArtException("게시글 전체 조회 실패!!");
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
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("artNo"+artNo)) {
					flag = true;
				}
			}
			
			if(!flag) {
				// 처음 읽는 게시글일때
				Cookie c = new Cookie("artNo"+artNo, String.valueOf(artNo));
				c.setMaxAge(1 * 24 * 60 * 60); // 하루동안 쿠키 저장
				response.addCookie(c);
			}
			
			art = aService.selectArt(artNo, flag);
			aT = aService.selectATime(artNo);
			img=aService.selectImg(artNo);
			s = new Seat(aT.get(0).getTimeNo() , artNo);
		}
		
		if(art != null) {
			mv.addObject("img", img);
			mv.addObject("art", art);
			mv.addObject("aT", aT);
			mv.addObject("s" ,s);
			mv.addObject("allS" , aService.selectSeatAllCount(s));
			mv.addObject("yS", aService.selectSeatYCount(s));
			mv.setViewName("musical/musicalDetail"); // 메소드 체이닝 방식
		}else {
			throw new ArtException("게시글 상세조회 실패!!"); 
		}
		return mv;
	}
	
	
	@RequestMapping("/searchArt.do") // 검색
	public String searchArt(String title) {
		ArrayList<Art> list = aService.searchArt(title);
		return "musical/buy";
	}
	
	

	@RequestMapping("/buy.do") //좌석 리스트 불러오기
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
			throw new ArtException("좌석 불러오기 실팽");
		}
		
		return mv;
	}
		
	//댓글
	@RequestMapping(value="sList.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getReplyList(int timeNo , int artNo) {
		Seat s = new Seat(timeNo , artNo);
		ArrayList<Seat> sList = aService.selectSeatList(s);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		// 시분초 다루고 싶다면 java.util.Date 사용
		return gson.toJson(sList);
	}

	
	@RequestMapping("/buyTwo.do") //좌석 선택 후 
	public ModelAndView buyTwo(int artNo , int timeNo, ModelAndView mv, @RequestParam(value="seatName[]") String seatName) {
		//결제 .
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
	
	@RequestMapping("/buyEnd") // 구매 완료 
	public String buyEnd(Purchase p) {
		System.out.println(p);
		int result = aService.insertPurchase(p);
		return "redirect:musical.do";
	}
	
	@RequestMapping("/insert.do")
	public String artInsertFoem() { //insertForm 으로 이동 
		
		return "musical/artInsertForm";
	}
	
	
	
	@RequestMapping("/insertArt.do") // 공연정보 isnert 후 회차 넣기 
	public String insertArt(HttpServletRequest request, Art a,/* Date startDate , Date endDate , Date ticketingDate,*/
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
			throw new ArtException("게시글 등록 실패!");
		}	

	}

	
	public String saveFile(MultipartFile file, HttpServletRequest request) { //파일 저장

		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\art"; // 파일 경로 수정

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS"); //년월일시분초.초
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) 
				+ originFileName.substring(originFileName.lastIndexOf("."));
		
		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 저장

		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		return renameFileName;
	}
	
	
	
	@RequestMapping("/insertTime.do")
	public String insertTime(ArtTime aT,
			@RequestParam("Time")String[] time) { //회차 삽입
		
			
			String[] timeGet = time[0].split("T");
			String date = timeGet[0] + " " + timeGet[1];
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

			aT.setDateTime(date);
			int result = aService.inserArtTime(aT);
			return "redirect:musical.do";
	}

	@RequestMapping("timeInsertForm.do")
	public String a() {
		return "musical/timeInsertForm";
	}
	
	
}

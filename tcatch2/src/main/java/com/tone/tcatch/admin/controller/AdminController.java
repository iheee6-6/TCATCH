package com.tone.tcatch.admin.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Company;



@Controller
public class AdminController {
	
	@Autowired 
	private ArtService aService;
	
	
	
	@RequestMapping("/admin4.do")
	public String admin4() {
		return "admin/admin4";
	}
	
	@RequestMapping("/admin5.do")
	public String admin5() {
		return "admin/adminCompany";
	}
	
	@RequestMapping("/admin6.do")
	public ModelAndView admin6(ModelAndView mv) {
		ArrayList<Company> cList =  aService.selectCompany();
		System.out.println("cList + "+cList);
		mv.addObject("list",cList);
		mv.setViewName("admin/adminInsert");
		
		return mv;
	}
	
	
	
}

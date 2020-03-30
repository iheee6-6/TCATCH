package com.tone.tcatch.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminController {
	
	
	
	
	@RequestMapping("/admin4.do")
	public String admin4() {
		return "admin/admin4";
	}
	
	@RequestMapping("/admin5.do")
	public String admin5() {
		return "admin/adminCompany";
	}
	
	@RequestMapping("/admin6.do")
	public String admin6() {
		return "admin/adminInsert";
	}
	
	
	
}

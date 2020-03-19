package com.tone.tcatch.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminController {
	
	
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin/admin";
	}
	
}

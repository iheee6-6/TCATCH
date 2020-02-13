package com.tone.tcatch.musical.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MusicalController {
	
	
	@RequestMapping("/musicalDetail.do")
	public String login() {
		return "musical/musicalDetail";
	}
	
	
}

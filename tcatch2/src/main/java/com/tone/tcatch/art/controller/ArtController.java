package com.tone.tcatch.art.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ArtController {
	@RequestMapping("/artDetail.do")
	public String login() {
		return "musical/musicalDetail";
	}
	
	@RequestMapping("/buy.do")
	public String buy() {
		return "musical/buy";
	}
	
	@RequestMapping("/buyTwo.do")
	public String buyTwo() {
		return "musical/buy_two";
	}
	@RequestMapping(value = "musical.do", method = RequestMethod.GET)
	public String musical() {
		return "musical/musical";
	}
	
}

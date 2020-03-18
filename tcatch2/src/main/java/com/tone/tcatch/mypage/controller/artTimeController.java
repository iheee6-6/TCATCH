package com.tone.tcatch.mypage.controller;

import java.sql.Date;
import java.util.ArrayList;

import javax.annotation.PostConstruct;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;
import com.tone.tcatch.member.model.vo.Member;
import com.tone.tcatch.mypage.model.service.MyPageService;

@Component
public class artTimeController {

	@Autowired
	MyPageService mpService;
	
	@Autowired
	ArtService aService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	/*@PostConstruct
	public void first() {
		ArrayList<Art> artList = aService.selectList();
		
		for(Art a: artList) {
			
		}
		
		System.out.println("1적용함.");
	}*/
	
	
	
}

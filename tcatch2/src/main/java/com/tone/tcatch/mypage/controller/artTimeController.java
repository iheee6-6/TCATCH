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
	
	@PostConstruct
	public void first() {
		ArrayList<Art> artList = aService.selectList();
		
		for(Art a: artList) {
			
		}
		
		System.out.println("1적용함.");
	}
	
	
	// @Scheduled(cron = "0 0 * * * *") //매일 매시 정각마다(티켓팅은 정각에 이루어지기 때문)
		public void test() {
			java.util.Date sysd = new java.util.Date();
			Date d = new Date(sysd.getTime());
			ArrayList<Art> artList = mpService.confirmTicketingTime(d);

			if (artList != null) {
				for (Art art : artList) {
					ArrayList<Member> mList = mpService.selectAlarmMember(art);
					for (Member mem : mList) {
						sendEmail(mem.getEmail(), art.getArtTitle());
					}
				}
			} else {
				System.out.println("티켓팅 1시간 전인 공연 없음.");
			}
			System.out.println("완료");

		}

		public void sendEmail(String email, String artTitle) {
			System.out.println("wow");
			String setfrom = "tcatch@gmail.com";
			String tomail = email; // 받는 사람 이메일
			String title = artTitle + "티켓팅 알림입니다.!!!";
			String content = artTitle + "티켓팅 한시간 전입니다! 잊지말고 준비하세요!!!! "; // 내용

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom);
				messageHelper.setTo(tomail);
				messageHelper.setSubject(title);
				messageHelper.setText(content);

				mailSender.send(message);
				System.out.println("이메일 전송 완료");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
}

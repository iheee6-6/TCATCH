package com.tone.tcatch;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tone.tcatch.art.model.service.ArtService;
import com.tone.tcatch.art.model.vo.Art;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ArtService aService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		ArrayList<Art> list = aService.searchArt("");
		
		ArrayList<Art> list0 = aService.selectRank(0);
		ArrayList<Art> list1 = aService.selectRank(1);
		ArrayList<Art> list2 = aService.selectRank(2);
		ArrayList<Art> list3 = aService.selectRank(3);

		mv.addObject("list" , list);
		mv.addObject("list0",list0);
		mv.addObject("list1",list1);
		mv.addObject("list2",list2);
		mv.addObject("list3",list3);
		mv.setViewName("common/main");
		
		return mv;
	}

	
}

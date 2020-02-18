package com.tone.tcatch.art.model.service;

import java.util.ArrayList;

import com.tone.tcatch.art.model.vo.Art;

public interface ArtService {
	
	ArrayList<Art> selectList();
	
	Art selectArt(int artNo , boolean flag);

}

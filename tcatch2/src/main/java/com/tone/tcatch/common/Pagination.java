package com.tone.tcatch.common;

import com.tone.tcatch.community.model.vo.PageInfo;

public class Pagination {
	// 페이지 정보를 담아줄 PageInfo 참조변수 선언
	private static PageInfo pi = null;

	public static PageInfo getPageInfo() {
		return pi;
	}
	
	// PageInfo 객체를 리턴하는 static 메소드 추가
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		
		
		// currentPage와 listCount가 넘어온 상태이기 때문에
		// 페이징 처리에 필요한 나머지 변수만 선언함
		
		int pageLimit = 10; // 한 페이지에서 보여질 페이징 수
		int maxPage; 		// 전체 페이징 수 중 가장 마지막 페이지
		int startPage;		// 현재 페이지에서 보여질 페이징 버튼의 시작 페이지
		int endPage;		// 현재 페이지에서 보여질 페이징 버튼의 끝 페이지
		
		int boardLimit = 5;	// 한 페이지에 보여질 게시글 개수
		
		// * maxPage - 총 페이지 수
		// 목록 수가 123개이면 페이지 수는 13페이지임
		// 짜투리 목록이 최소 1개일 때, 1page로 처리하기 위해 0.9를 더함
		maxPage = (int)((double)listCount / boardLimit + 0.9);
		
		// * startPage - 현재 페이지에 보여질 시작 페이지 수 
		//   아래쪽에 페이지 수가 10개씩 보여지게 할 경우
		//   1, 11, 21, 31, .....
		startPage = (((int)((double)currentPage / pageLimit + 0.9)) - 1) * pageLimit + 1;
		
		// * endPage - 현재 페이지에서 보여질 마지막 페이지 수
		//   아래쪽에 페이지 수가 10개씩 보여지게 할 경우
		//   10, 20, 30, 40, .....
		endPage = startPage + pageLimit - 1;
		
		// 하지만 마지막 페이지 수가 총 페이지 수보다 클 경우
		// maxPage가 13페이지고 endPage가 20페이지일 경우
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		
		return pi;
	}
}

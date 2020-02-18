package com.tone.tcatch.mypage.model.vo;

public class MyPageFile {
	private String fs_no;		// 파일 번호
	private String fs_destination;	// 파일 목적지 (공방 번호,클래스 번호)
	private String originName;	// 사용자가 업로드한 파일명
	private String reName;	// 변경 된 파일명
	private String filePath; 
	
	public MyPageFile() {}

	public MyPageFile(String fs_no, String fs_destination, String originName, String reName) {
		super();
		this.fs_no = fs_no;
		this.fs_destination = fs_destination;
		this.originName = originName;
		this.reName = reName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFs_no() {
		return fs_no;
	}

	public void setFs_no(String fs_no) {
		this.fs_no = fs_no;
	}

	public String getFs_destination() {
		return fs_destination;
	}

	public void setFs_destination(String fs_destination) {
		this.fs_destination = fs_destination;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getReName() {
		return reName;
	}

	public void setReName(String reName) {
		this.reName = reName;
	}

	@Override
	public String toString() {
		return "ShopFile [fs_no=" + fs_no + ", fs_destination=" + fs_destination + ", originName=" + originName
				+ ", reName=" + reName + ", filePath=" + filePath + "]";
	}

	
	
}

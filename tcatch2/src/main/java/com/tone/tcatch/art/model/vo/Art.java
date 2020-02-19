package com.tone.tcatch.art.model.vo;

public class Art {
	private int artNo;	//������ȣ
	private int artType;//����Ÿ��
	private String artTitle;//������
	private String artExplain;//��������
	private int count;//��ȸ��
	private String address;//�������
	private int companyNo;//ȸ���ȣ
	private int rating;//������ȣ
	private String status;//����(����)
	private String originalFile;//���� ���ϸ�
	private String renameFile;//�������ϸ�
	private int durationTime;//�ҿ�ð�(��) 
	 
	public Art() {}
	
	public Art(int artNo, int artType, String artTitle, String artExplain, int count, String address, int companyNo,
			int rating, String status, String originalFile, String renameFile, int durationTime) {
		super();
		this.artNo = artNo;
		this.artType = artType;
		this.artTitle = artTitle;
		this.artExplain = artExplain;
		this.count = count;
		this.address = address;
		this.companyNo = companyNo;
		this.rating = rating;
		this.status = status;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.durationTime = durationTime;
	}
	public int getArtNo() {
		return artNo;
	}
	public void setArtNo(int artNo) {
		this.artNo = artNo;
	}
	public int getArtType() {
		return artType;
	}
	public void setArtType(int artType) {
		this.artType = artType;
	}
	public String getArtTitle() {
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	public String getArtExplain() {
		return artExplain;
	}
	public void setArtExplain(String artExplain) {
		this.artExplain = artExplain;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOriginalFile() {
		return originalFile;
	}
	public void setOriginalFile(String originalFile) {
		this.originalFile = originalFile;
	}
	public String getRenameFile() {
		return renameFile;
	}
	public void setRenameFile(String renameFile) {
		this.renameFile = renameFile;
	}
	public int getDurationTime() {
		return durationTime;
	}
	public void setDurationTime(int durationTime) {
		this.durationTime = durationTime;
	}
	@Override
	public String toString() {
		return "Art [artNo=" + artNo + ", artType=" + artType + ", artTitle=" + artTitle + ", artExplain=" + artExplain
				+ ", count=" + count + ", address=" + address + ", companyNo=" + companyNo + ", rating=" + rating
				+ ", status=" + status + ", originalFile=" + originalFile + ", renameFile=" + renameFile
				+ ", durationTime=" + durationTime + "]";
	}
	
	
}

package com.tone.tcatch.art.model.vo;

import java.sql.Date;

public class ArtDetail {
	private int artNo;	//������ȣ
	private int artType;//����Ÿ��
	private String artTitle;//������
	private String artExplain;//��������
	private String address;//�������
	private int companyNo;//ȸ���ȣ
	private int age; //���� ���
	private String originalFile;//���� ���ϸ� 
	private String renameFile;//�������ϸ�
	private int durationTime;//�ҿ�ð�(��) 
	private String companyName; //ȸ�� �̸�
	private String companyPhone;// ȸ�� ��ȣ 
	private String companyInfo; // ȸ�� ����
	private Date startDate; //���� ���� ��¥ 
	private Date endDate; // ���� ���� ��¥

	
	public ArtDetail() {}


	public ArtDetail(int artNo, int artType, String artTitle, String artExplain, String address, int companyNo, int age,
			String originalFile, String renameFile, int durationTime, String companyName, String companyPhone,
			String companyInfo, Date startDate, Date endDate) {
		super();
		this.artNo = artNo;
		this.artType = artType;
		this.artTitle = artTitle;
		this.artExplain = artExplain;
		this.address = address;
		this.companyNo = companyNo;
		this.age = age;
		this.originalFile = originalFile;
		this.renameFile = renameFile;
		this.durationTime = durationTime;
		this.companyName = companyName;
		this.companyPhone = companyPhone;
		this.companyInfo = companyInfo;
		this.startDate = startDate;
		this.endDate = endDate;
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


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
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


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getCompanyPhone() {
		return companyPhone;
	}


	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}


	public String getCompanyInfo() {
		return companyInfo;
	}


	public void setCompanyInfo(String companyInfo) {
		this.companyInfo = companyInfo;
	}


	public Date getStartDate() {
		return startDate;
	}


	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public Date getEndDate() {
		return endDate;
	}


	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	@Override
	public String toString() {
		return "ArtDetail [artNo=" + artNo + ", artType=" + artType + ", artTitle=" + artTitle + ", artExplain="
				+ artExplain + ", address=" + address + ", companyNo=" + companyNo + ", age=" + age + ", originalFile="
				+ originalFile + ", renameFile=" + renameFile + ", durationTime=" + durationTime + ", companyName="
				+ companyName + ", companyPhone=" + companyPhone + ", companyInfo=" + companyInfo + ", startDate="
				+ startDate + ", endDate=" + endDate + "]";
	}
	
	
	
	
	
}

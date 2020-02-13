package com.tone.tcatch.member.model.vo;

import java.sql.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String gender;
	private String birth;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date updateDate;
	private String mStatus;
	
	public Member() {}
	
	
	public Member(String id, String pwd, String name, String email, String gender, String birth, String phone,
			String address, Date enrollDate, Date updateDate, String mStatus) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
		this.phone = phone;
		this.address = address;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.mStatus = mStatus;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public Date getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}


	public String getmStatus() {
		return mStatus;
	}


	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}


	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", gender=" + gender
				+ ", birth=" + birth + ", phone=" + phone + ", address=" + address + ", enrollDate=" + enrollDate
				+ ", updateDate=" + updateDate + ", mStatus=" + mStatus + "]";
	}
	
	
	
	
}





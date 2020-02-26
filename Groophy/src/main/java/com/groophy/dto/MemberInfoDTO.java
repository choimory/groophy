package com.groophy.dto;


public class MemberInfoDTO {
	private String uId;
	private String uPw;
	private String uNickName;
	private String uEmail;
	private String uPhone;
	private String uGender;
	private String uPhoto;
	private String uIntroduce;
	private String uRegDate;

	
	
	public String getuPhoto() {
		return uPhoto;
	}

	public void setuPhoto(String uPhoto) {
		this.uPhoto = uPhoto;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getuPw() {
		return uPw;
	}

	public void setuPw(String uPw) {
		this.uPw = uPw;
	}

	public String getuNickName() {
		return uNickName;
	}

	public void setuNickName(String uNickName) {
		this.uNickName = uNickName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuGender() {
		return uGender;
	}

	public void setuGender(String uGender) {
		this.uGender = uGender;
	}

	public String getuIntroduce() {
		return uIntroduce;
	}

	public void setuIntroduce(String uIntroduce) {
		this.uIntroduce = uIntroduce;
	}

	public String getuRegDate() {
		return uRegDate;
	}

	public void setuRegDate(String uRegDate) {
		this.uRegDate = uRegDate;
	}

}

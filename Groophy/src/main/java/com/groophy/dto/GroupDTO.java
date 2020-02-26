package com.groophy.dto;

public class GroupDTO {
	private int gIndex;
	private String gTitle;
	private String gName;
	private String uId;
	private String gIntroduce;
	private String gCategory;
	private String gProvince;
	private String gCity;
	private String gDifficulty;
	private String gStudyOfWeek;
	private String gStartDate;
	private String gEndDate;
	private String gRegDate;
	private int gCurrentNumber;
	private int gMaximumNumber;
	private int gProgress;
	private String gPhoto;
	
	public String getgStudyOfWeek() {
		return gStudyOfWeek;
	}
	public void setgStudyOfWeek(String gStudyOfWeek) {
		this.gStudyOfWeek = gStudyOfWeek;
	}
	public int getgIndex() {
		return gIndex;
	}
	public void setgIndex(int gIndex) {
		this.gIndex = gIndex;
	}
	public String getgTitle() {
		return gTitle;
	}
	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getgIntroduce() {
		return gIntroduce;
	}
	public void setgIntroduce(String gIntroduce) {
		this.gIntroduce = gIntroduce;
	}
	public String getgCategory() {
		return gCategory;
	}
	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}
	public String getgProvince() {
		return gProvince;
	}
	public void setgProvince(String gProvince) {
		this.gProvince = gProvince;
	}
	public String getgCity() {
		return gCity;
	}
	public void setgCity(String gCity) {
		this.gCity = gCity;
	}
	public String getgDifficulty() {
		return gDifficulty;
	}
	public void setgDifficulty(String gDifficulty) {
		this.gDifficulty = gDifficulty;
	}
	public String getgStartDate() {
		return gStartDate;
	}
	public void setgStartDate(String gStartDate) {
		this.gStartDate = gStartDate;
	}
	public String getgEndDate() {
		return gEndDate;
	}
	public void setgEndDate(String gEndDate) {
		this.gEndDate = gEndDate;
	}
	public String getgRegDate() {
		return gRegDate;
	}
	public void setgRegDate(String gRegDate) {
		this.gRegDate = gRegDate;
	}
	public int getgProgress() {
		return gProgress;
	}
	public void setgProgress(int gProgress) {
		this.gProgress = gProgress;
	}
	public int getgCurrentNumber() {
		return gCurrentNumber;
	}
	public void setgCurrentNumber(int gCurrentNumber) {
		this.gCurrentNumber = gCurrentNumber;
	}
	public int getgMaximumNumber() {
		return gMaximumNumber;
	}
	public void setgMaximumNumber(int gMaximumNumber) {
		this.gMaximumNumber = gMaximumNumber;
	}
	public String getgPhoto() {
		return gPhoto;
	}
	public void setgPhoto(String gPhoto) {
		this.gPhoto = gPhoto;
	}
	
	@Override
	public String toString() {
		return "GroupDTO [gIndex=" + gIndex + ", gTitle=" + gTitle + ", gName=" + gName + ", uId=" + uId
				+ ", gIntroduce=" + gIntroduce + ", gCategory=" + gCategory + ", gProvince=" + gProvince + ", gCity="
				+ gCity + ", gDifficulty=" + gDifficulty + ", gStudyOfWeek=" + gStudyOfWeek + ", gStartDate="
				+ gStartDate + ", gEndDate=" + gEndDate + ", gRegDate=" + gRegDate + ", gCurrentNumber="
				+ gCurrentNumber + ", gMaximumNumber=" + gMaximumNumber + ", gProgress=" + gProgress + ", gPhoto="
				+ gPhoto + "]";
	}
	
	

}

package com.groophy.dto;

public class MemberStatDTO {	
	private String uId;
	private int gIndex;
	private int accept;
	private int studyCount;
	private int studySuccess;
	private int kickCount;
	private int checkCount;
	private int checkSuccess;
	private int ban;
	
	
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public int getgIndex() {
		return gIndex;
	}
	public void setgIndex(int gIndex) {
		this.gIndex = gIndex;
	}
	public int getAccept() {
		return accept;
	}
	public void setAccept(int accept) {
		this.accept = accept;
	}
	public int getStudyCount() {
		return studyCount;
	}
	public void setStudyCount(int studyCount) {
		this.studyCount = studyCount;
	}
	public int getStudySuccess() {
		return studySuccess;
	}
	public void setStudySuccess(int studySuccess) {
		this.studySuccess = studySuccess;
	}
	public int getKickCount() {
		return kickCount;
	}
	public void setKickCount(int kickCount) {
		this.kickCount = kickCount;
	}
	public int getCheckCount() {
		return checkCount;
	}
	public void setCheckCount(int checkCount) {
		this.checkCount = checkCount;
	}
	public int getCheckSuccess() {
		return checkSuccess;
	}
	public void setCheckSuccess(int checkSuccess) {
		this.checkSuccess = checkSuccess;
	}
	public int getBan() {
		return ban;
	}
	public void setBan(int ban) {
		this.ban = ban;
	}
	
	
}

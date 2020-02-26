package com.groophy.dto;

public class GroupCommentDTO {
	private int gcIndex;
	private int gIndex;
	private String uId;
	private String gcComment;
	private String gcRegDate;
	private int gcReport;
	private int gcTeam;
	private int gcStep;
	private int gcIndent;
	
	

	
	public int getGcTeam() {
		return gcTeam;
	}

	public void setGcTeam(int gcTeam) {
		this.gcTeam = gcTeam;
	}

	public int getGcStep() {
		return gcStep;
	}

	public void setGcStep(int gcStep) {
		this.gcStep = gcStep;
	}

	public int getGcIndent() {
		return gcIndent;
	}

	public void setGcIndent(int gcIndent) {
		this.gcIndent = gcIndent;
	}

	public int getGcReport() {
		return gcReport;
	}

	public void setGcReport(int gcReport) {
		this.gcReport = gcReport;
	}

	public int getGcIndex() {
		return gcIndex;
	}

	public void setGcIndex(int gcIndex) {
		this.gcIndex = gcIndex;
	}

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

	public String getGcComment() {
		return gcComment;
	}

	public void setGcComment(String gcComment) {
		this.gcComment = gcComment;
	}

	public String getGcRegDate() {
		return gcRegDate;
	}

	public void setGcRegDate(String gcRegDate) {
		this.gcRegDate = gcRegDate;
	}

}

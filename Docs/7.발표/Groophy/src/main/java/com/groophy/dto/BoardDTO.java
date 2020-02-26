package com.groophy.dto;

public class BoardDTO {
	private int gIndex;
	private int bIndex;
	private String uId;
	private String bTitle;
	private String bContent;
	private String bDate;
	private int bViewcnt;
	private int replyCnt;
	private String bFile;
	
	
	public void setgIndex(int gIndex) {
		this.gIndex = gIndex;
	}
	public void setbIndex(int bIndex) {
		this.bIndex = bIndex;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	public void setbViewcnt(int bViewcnt) {
		this.bViewcnt = bViewcnt;
	}
	public void setReplyCnt(int replyCnt) {
		this.replyCnt = replyCnt;
	}
	public void setbFile(String bFile) {
		this.bFile = bFile;
	}
	
	
	public int getgIndex() {
		return gIndex;
	}
	public int getbIndex() {
		return bIndex;
	}
	public String getuId() {
		return uId;
	}
	public String getbTitle() {
		return bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public String getbDate() {
		return bDate;
	}
	public int getbViewcnt() {
		return bViewcnt;
	}
	public int getReplyCnt() {
		return replyCnt;
	}
	public String getbFile() {
		return bFile;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [gIndex=" + gIndex + ", bIndex=" + bIndex + ", uId=" + uId + ", bTitle=" + bTitle
				+ ", bContent=" + bContent + ", bDate=" + bDate + ", bViewcnt=" + bViewcnt + ", replyCnt=" + replyCnt
				+ ", bFile=" + bFile + "]";
	}
		
}

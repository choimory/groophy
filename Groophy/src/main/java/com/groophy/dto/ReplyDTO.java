package com.groophy.dto;

import java.util.Date;

public class ReplyDTO {
	private int gIndex;
	private int rno;
	private int bno;
	private String replytext;
	private String replyer;
	private Date regdate;
	private Date updatedate;
	
	
	public void setgIndex(int gIndex) {
		this.gIndex = gIndex;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}	
	
	
	public int getgIndex() {
		return gIndex;
	}
	public int getRno() {
		return rno;
	}
	public int getBno() {
		return bno;
	}
	public String getReplytext() {
		return replytext;
	}
	public String getReplyer() {
		return replyer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	
	
	@Override
	public String toString() {
		return "ReplyDTO [gIndex=" + gIndex + ", rno=" + rno + ", bno=" + bno + ", replytext=" + replytext
				+ ", replyer=" + replyer + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}

package com.groophy.dto;

public class BoardKeyDTO {
	private int gIndex;
	private int bIndex;
	private int page;
	private int pageSize;
	private String keyField;
	private String keyWord;
	
	public BoardKeyDTO() {
		this.page = 1;
		this.pageSize = 10;
		this.keyField = "t";
	}
		
	public void setgIndex(int gIndex) {
		this.gIndex = gIndex;
	}
	public void setbIndex(int bIndex) {
		this.bIndex = bIndex;
	}
	public void setPage(int page) {
		if(page <= 0) {
			this.page=1;
			return;
		}
		this.page = page;
	}
	public void setPageSize(int pageSize) {
		if(pageSize <= 0 || pageSize > 100) {
			this.pageSize=10;
			return;
		}
		this.pageSize = pageSize;
	}
	public void setKeyField(String keyField) {
		if(keyField.equals(null)) {
			this.keyField="t";
			return;
		}
		this.keyField = keyField;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	
	
	public int getgIndex() {
		return gIndex;
	}
	public int getbIndex() {
		return bIndex;
	}
	public int getPage() {
		return page;
	}
	public int getPageStart() {
		return (this.page-1)*pageSize;
	}
	public int getPageSize() {
		return pageSize;
	}
	public String getKeyField() {
		return keyField;
	}
	public String getKeyWord() {
		return keyWord;
	}

	@Override
	public String toString() {
		return "BoardKeyDTO [gIndex=" + gIndex + ", bIndex=" + bIndex + ", page=" + page + ", pageSize=" + pageSize
				+ ", keyField=" + keyField + ", keyWord=" + keyWord + "]";
	}
		
}

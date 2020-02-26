package com.groophy.dto;

public class GroupKeyDTO extends BoardKeyDTO {
	/*private int gPage;
	private int gPageSize;
	private int gFirstIndex;
	private int gLastPage;
	
	private int blockSize;
	private int currentBlock;*/
	
	private String gProvince;
	private String gCity;
	private String gCategory;
	private String gDifficulty;


	/*public int getgPage() {
		return gPage;
	}

	public void setgPage(int gPage) {
		this.gPage = gPage;
	}

	public int getgLastPage() {
		return gLastPage;
	}

	public void setgLastPage(int gLastPage) {
		this.gLastPage = gLastPage;
	}

	public int getgFirstIndex() {
		return gFirstIndex;
	}

	public void setgFirstIndex(int gFirstIndex) {
		this.gFirstIndex = gFirstIndex;
	}

	public int getgPageSize() {
		return gPageSize;
	}

	public void setgPageSize(int gPageSize) {
		this.gPageSize = gPageSize;
	}*/


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

	public String getgCategory() {
		return gCategory;
	}

	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}

	public String getgDifficulty() {
		return gDifficulty;
	}

	public void setgDifficulty(String gDifficulty) {
		this.gDifficulty = gDifficulty;
	}

	@Override
	public String toString() {
		return "GroupKeyDTO [gProvince=" + gProvince + ", gCity=" + gCity + ", gCategory=" + gCategory
				+ ", gDifficulty=" + gDifficulty + "]";
	}

	
	
	
}
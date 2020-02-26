package com.groophy.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum=10;
	private BoardKeyDTO keydto;
	
	public void setKeydto(BoardKeyDTO keydto) {
		this.keydto = keydto;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	private void calcData() {
		
		endPage=(int)(Math.ceil(keydto.getPage() / (double)displayPageNum) * displayPageNum);
		startPage=(endPage-displayPageNum)+1;
		
		int tempEndPage=(int)(Math.ceil(totalCount / (double)keydto.getPageSize()));
		
		if(endPage > tempEndPage) {
			endPage=tempEndPage;
		}
		
		prev = startPage==1 ? false:true;
		next = endPage * keydto.getPageSize() >= totalCount ? false:true;
		
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public boolean isNext() {
		return next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public BoardKeyDTO getKeydto() {
		return keydto;
	}
	
	public String makeQuery(int page) {
		UriComponents  uriComponents=
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("pageSize", keydto.getPageSize())
				.build();
		return uriComponents.toUriString();
		
	}
	
	public String makeSearch(int page) {
		UriComponents uriComponents=
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("pageSize", keydto.getPageSize())
				.queryParam("keyField", keydto.getKeyField())
				.queryParam("keyWord",keydto.getKeyWord())
				.build();
		return uriComponents.toUriString();
	}
	
	public String groupSearchMain(int page) {
		UriComponents uriComponents=
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("pageSize", keydto.getPageSize())
				.build();
		return uriComponents.toUriString();
	}
	
	public String groupSearch(int page) {
		UriComponents uriComponents=
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("pageSize", keydto.getPageSize())
				.queryParam("gProvince", ((GroupKeyDTO) keydto).getgProvince())
				.queryParam("gCity", ((GroupKeyDTO) keydto).getgCity())
				.queryParam("gCategory", ((GroupKeyDTO) keydto).getgCategory())
				.build();
		return uriComponents.toUriString();
	}

}

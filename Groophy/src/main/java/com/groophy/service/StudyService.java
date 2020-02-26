package com.groophy.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.CalendarDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MapDTO;
import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;

@Service
public interface StudyService {
	
	//대문사진 불러오기 
	public GroupDTO gotomain(int gIndex);
	//달력일정들 불러오기
	public List<CalendarDTO> gotocalendar(int gIndex);
	//달력일정 저장하기
	public int savecalendar(CalendarDTO calendardto);
	//저장되어있는 맵 좌표 불러오기
	public MapDTO gotomap(int gIndex);
	//맵 좌표 저장하기
	public int savelocation(MapDTO mdto);
	//그룹 탈퇴하기
	public int withdraw(String uId);
	//그룹리더의 아이디를 불러오기
	public String checkifleader(int gIndex);
	//멤버들의 이메일 전부 불러오기
	public List<Map<String,String>> getallemail(int gIndex);
	//멤버정보 불러오기
	
	public List<Map<String,Object>> lineup(int gIndex);
	//회원닉네임 리스트 불러오기(추방하기로 가기)
	
	public GroupDTO gotogroupinfo(int gIndex);
	//그룹정보 가져오기(수정하기로 가기)
	
	//회원 추방하기
	public int kick(String uId);
	//그룹 폐쇄하기
	public int deletegroup(int gIndex);
	public GroupDTO checkprogress(int gIndex);
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception;
}

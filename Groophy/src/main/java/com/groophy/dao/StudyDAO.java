package com.groophy.dao;

import java.util.List;
import java.util.Map;

import com.groophy.dto.CalendarDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MapDTO;
import com.groophy.dto.MemberStatDTO;

public interface StudyDAO {
	// 대문사진 불러오기 
	public GroupDTO gotomain(int gIndex);
	//달력일정들 불러오기
	public List<CalendarDTO> gotocalendar(int gIndex);
	//달력일정 저장하기
	public int savecalendar(CalendarDTO calendardto);
	//저장되어있는 맵 좌표 불러오기
	public MapDTO gotomap(int gIndex);
	//맵 좌표 저장하기
	public int savelocation(MapDTO mdto);
	//DAO로 넘길땐 x좌표와 y좌표 분리해서 넘기기
	//그룹 탈퇴하기 (그룹아이디와 승인 0 으로 바꾸기)
	public int withdraw(String uId);
	//그룹리더의 아이디를 불러오기
	public String checkifleader(int gIndex);
	//������� �̸��� ���� �ҷ�����
	public List<Map<String,String>> getallemail(int gIndex);
	//������� �ҷ�����
	public List<Map<String,Object>> lineup(int gIndex);
	//ȸ���г��� ����Ʈ �ҷ�����(�߹��ϱ�� ����)
	//public List<MemberStatDTO> 
	//추당당한 회원 그룹추방하기
	public int getoutofgroup(String uId);
	//그룹현재인원 체크하기
	public int checkcurrentnum(int gIndex);
	//그룹현재인원 내리기
	public int minuscurrentnum(GroupDTO gdto);
	//추방당한 회원 추방횟수 불러오기
	public int checkkickrate(String uId);
	//추방당한 회원 추방횟수 올리기
	public int upkickrate(MemberStatDTO msdto);
	//아이디로 그룹 찾기
	public int checkgroup(String uId);
	
	//가입되어있는 회원들의 그룹가입정보들 수정
	public int deletegroupfrommemberstat(int gIndex);
	//그룹 정보삭제
	public int deletegroupinfo(int gIndex);
		
		
}

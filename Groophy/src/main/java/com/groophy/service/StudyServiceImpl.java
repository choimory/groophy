package com.groophy.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.groophy.dao.BoardDAO;
import com.groophy.dao.GroupDAO;
import com.groophy.dao.MemberDAO;
import com.groophy.dao.StudyDAO;
import com.groophy.dto.BoardDTO;
import com.groophy.dto.BoardKeyDTO;
import com.groophy.dto.CalendarDTO;
import com.groophy.dto.GroupDTO;
import com.groophy.dto.MapDTO;
import com.groophy.dto.MemberStatDTO;

public class StudyServiceImpl implements StudyService {

private MemberDAO memberDAO;
private StudyDAO studyDAO;	
private GroupDAO groupDAO;	
@Autowired
private BoardDAO boardDAO;

	public BoardDAO getBoardDAO() {
	return boardDAO;
}

public void setBoardDAO(BoardDAO boardDAO) {
	this.boardDAO = boardDAO;
}

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	public void setStudyDAO(StudyDAO studyDAO) {
		this.studyDAO = studyDAO;
	}
	
	
	
	public GroupDAO getGroupDAO() {
		return groupDAO;
	}

	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}

	public MemberDAO getMemberDAO() {
		return memberDAO;
	}

	public StudyDAO getStudyDAO() {
		return studyDAO;
	}

	@Override
	public GroupDTO gotomain(int gIndex) {
		return studyDAO.gotomain(gIndex);
	}

	@Override
	public List<CalendarDTO> gotocalendar(int gIndex) {
		return studyDAO.gotocalendar(gIndex);
	}

	@Override
	public int savecalendar(CalendarDTO calendardto) {
		return studyDAO.savecalendar(calendardto);
	}

	@Override
	public MapDTO gotomap(int gIndex) {
		return studyDAO.gotomap(gIndex);
	}

	@Override
	public int savelocation(MapDTO mdto) {
		return studyDAO.savelocation(mdto);
	}

	@Override
	public int withdraw(String uId) {
		return studyDAO.withdraw(uId);
	}

	@Override
	public String checkifleader(int gIndex) {
		return studyDAO.checkifleader(gIndex);
	}


	@Override
	public List<Map<String,String>> getallemail(int gIndex) {
		return studyDAO.getallemail(gIndex);
	}

	@Override
	public List<Map<String,Object>> lineup(int gIndex) {
		return studyDAO.lineup(gIndex);
	}
	
	@Override
	public GroupDTO gotogroupinfo(int gIndex) {
		return groupDAO.getGroupDTO2(gIndex);
	}

	@Override
	public int kick(String uId) {
		//1. 해당멤버의 그룹을 없애기
		int getoutret = 0;
		getoutret = studyDAO.getoutofgroup(uId);
		if(getoutret==0)
		{
			return 0;
		}else {
			MemberStatDTO msdto = new MemberStatDTO();
			GroupDTO gdto = new GroupDTO();
			//2. 멤버의 현재그웁 알아내기
			int gIndex = studyDAO.checkgroup(uId);
			//2. 그룹현재인원 알아내기
			int current = studyDAO.checkcurrentnum(gIndex);
			//3. 그룹 현재인원 내리기
			gdto.setgCurrentNumber(current-1);
			gdto.setgCurrentNumber(gIndex);
			studyDAO.minuscurrentnum(gdto);
			//4. 해당멤버의 추방횟수 알아내기
			int kickrate = studyDAO.checkkickrate(uId);
			//4. 해당멤버의 추방횟수 증가시키기
			System.out.println("회원아이디 \""+uId+"\" 를 내보냈습니다.");
			
			msdto.setCheckCount(kickrate+1);
			msdto.setuId(uId);
			return studyDAO.upkickrate(msdto);
		}
	}

	@Override
	public int deletegroup(int gIndex) {
		int deleteret = 0;
		//1.가입되어있는 회원들의 그룹가입정보들 수정
		deleteret = studyDAO.deletegroupfrommemberstat(gIndex);
		if(deleteret==0)
		{
			return 0;
		}else {
			//2.그룹 정보삭제
			return studyDAO.deletegroupinfo(gIndex);
		}
	}
	
	@Override
	public GroupDTO checkprogress(int gIndex)
	{
		return groupDAO.getGroupDTO2(gIndex);
	}
	
	@Override
	public List<BoardDTO> list(BoardKeyDTO keydto) throws Exception
	{
		return boardDAO.list(keydto);
	}

}

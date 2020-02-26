package com.groophy.service;

import java.util.List;

import com.groophy.dao.GroupDAO;
import com.groophy.dao.MemberDAO;
import com.groophy.dao.StudyDAO;
import com.groophy.dto.GroupDTO;

public class AdminServiceImpl implements AdminService {
	private MemberDAO memberDAO;
	private StudyDAO studyDAO;	
	private GroupDAO groupDAO;
	public MemberDAO getMemberDAO() {
		return memberDAO;
	}

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public StudyDAO getStudyDAO() {
		return studyDAO;
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

		
	
	@Override
	public int checkifadmin(String uId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int ban(String uId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int close(int gIndex) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<GroupDTO> getallgroups() {
		// TODO Auto-generated method stub
		return groupDAO.getMainGroup();
	}

}

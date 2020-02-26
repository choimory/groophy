package com.groophy.dao;

import java.util.List;
import java.util.Map;

import com.groophy.dto.MemberInfoDTO;
import com.groophy.dto.MemberStatDTO;

public interface MemberDAO {	
	public int updateLeaderStat(MemberStatDTO memberStatDTO);
	public int insertToMemberInfo(MemberInfoDTO memberInfoDTO);
	public int insertToMemberStat(String uId);
	public MemberInfoDTO getMemberInfoDTO(String uId);
	public MemberStatDTO getMemberStatDTO(String uId);
	public String getUid(String uEmail);
	public int updatePassword(MemberInfoDTO memberInfoDTO);
	public int updateMemberInfo(MemberInfoDTO memberInfoDTO);
	public int updateCheckCount(int checkCount);
	public int deleteMemberInfo(String uId);
	public int deleteMemberStat(String uId);
	public int applyGroup(MemberStatDTO memberStatDTO);
	public int cancelApply(String uId);
	public int applyAccept(String uId);
	public int getDefaultApplyMembers(int gIndex);
	public int getDefaultAcceptMembers(int gIndex);
	public int increaseStudyCount(int gIndex);
	public MemberStatDTO getMemberStat(String uId);
	public List<Map<String,Object>> getApplyList(int gIndex);
	public List<Map<String,Object>> getAcceptList(int gIndex);
	public String getPassword(String uId);
}

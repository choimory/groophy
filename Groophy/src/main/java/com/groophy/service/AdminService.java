package com.groophy.service;

import java.util.List;

import com.groophy.dto.GroupDTO;

public interface AdminService {
	public int checkifadmin(String uId);
	//public List<MemberInfo>
	public int ban(String uId);
	public int close(int gIndex);
	public List<GroupDTO> getallgroups();
}

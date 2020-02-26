package com.groophy.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.groophy.dto.MemberInfoDTO;

public interface MemberService {
	public Map<String, Object> join(MemberInfoDTO memberInfoDTO,String filePath, String originalFileName, byte[] fileBytes);
	public Map<String, Object> login(String uId, String uPw);
	public String findID(String uEmail);
	public int findPW(String uId, String uEmail);
	public Map<String,Object> memberInfo(String uId);
	public boolean modifyBefore(String uId, String uPw);
	public MemberInfoDTO modifyInfo(MemberInfoDTO memberInfoDTO,String filePath,String originalFileName, byte[] fileBytes);
	public int withdraw(String uId, String uPw);
}

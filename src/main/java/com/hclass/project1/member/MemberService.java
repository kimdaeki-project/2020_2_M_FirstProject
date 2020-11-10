package com.hclass.project1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public int setOne(MemberDTO memberDTO) throws Exception{
		return memberDAO.setOne(memberDTO);
	}
	public MemberDTO getOne(MemberDTO memberDTO) throws Exception{
		
		return memberDAO.getOne(memberDTO);
	}
	public MemberDTO getPhone(MemberDTO memberDTO) throws Exception{
		
		return memberDAO.getPhone(memberDTO);
	}
	public MemberDTO getEmail(MemberDTO memberDTO) throws Exception{
	
		return memberDAO.getEmail(memberDTO);
	}
	public MemberDTO memberLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.memberLogin(memberDTO);
	}
}

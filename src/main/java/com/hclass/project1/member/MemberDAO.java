package com.hclass.project1.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.hclass.project1.member.MemberDAO.";
	
	
public int memberDelete(MemberDTO memberDTO) throws Exception{
		
		return sqlSession.delete(namespace+"memberDelete",memberDTO);
	}
	
	public int setOne(MemberDTO memberDTO) throws Exception{
		
		return sqlSession.insert(namespace+"setOne",memberDTO);
	}
	
	public MemberDTO getOne(MemberDTO memberDTO) throws Exception{
		
		return sqlSession.selectOne(namespace+"getOne",memberDTO);
	}
		public MemberDTO getEmail(MemberDTO memberDTO) throws Exception{
		
		return sqlSession.selectOne(namespace+"getEmail",memberDTO);
	}
	public MemberDTO getPhone(MemberDTO memberDTO) throws Exception{
	
		return sqlSession.selectOne(namespace+"getPhone",memberDTO);
	}
	
	public MemberDTO memberLogin(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(namespace+"memberLogin",memberDTO);
	}
	
	public int memberUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(namespace+"memberUpdate",memberDTO);
	}
	public MemberDTO pwCheck(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(namespace+"pwCheck",memberDTO);
	}
}

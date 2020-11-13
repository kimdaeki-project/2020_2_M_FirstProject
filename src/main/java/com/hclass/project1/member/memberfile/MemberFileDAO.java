package com.hclass.project1.member.memberfile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberFileDAO {

	@Autowired
	 private SqlSession sqlSession;
	private final String namespace ="com.hclass.project1.member.membetrainerfile.MemberFileDAO.";
	
	public int setFileOne(MemberFileDTO memberfileDTO)throws Exception{
		return sqlSession.insert(namespace+"setFileOne",memberfileDTO);
	}
}

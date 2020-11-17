package com.hclass.project1.pay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.hclass.project1.pay.PayDAO.";
	
	public int setCharge(PayDTO payDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setCharge", payDTO);
	}
	
}

package com.hclass.porject1.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.hclass.porject1.qna.QnaDAO.";

	public int setOne(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(namespace+"setOne",qnaDTO);
	}
}

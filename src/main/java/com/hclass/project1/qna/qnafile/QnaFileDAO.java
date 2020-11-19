package com.hclass.project1.qna.qnafile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class QnaFileDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String namespace ="com.hclass.project1.qna.qnafile.QnaFileDAO.";
	
	public int setFileOne(QnaFileDTO qnafileDTO)throws Exception{
		return sqlSession.insert(namespace+"setFileOne",qnafileDTO);
	}
}

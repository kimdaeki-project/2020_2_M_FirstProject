package com.hclass.project1.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hclass.project1.util.Pager;




@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.hclass.porject1.qna.QnaDAO.";
	
	public QnaDTO getOne(QnaDTO qnaDTO) throws Exception{
		return sqlSession.selectOne(namespace+"getOne",qnaDTO);
	}
	public List<QnaDTO> getList(Pager pager) throws Exception{
		
		return sqlSession.selectList(namespace+"getList",pager);
	}

	public int setOne(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(namespace+"setOne",qnaDTO);
	}
	public long getCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"getCount", pager);
	}
	
	public int setUpdate(QnaDTO qnaDTO) throws Exception{
		return sqlSession.update(namespace+"setUpdate",qnaDTO);
	}
	public int setDelete(QnaDTO qnaDTO) throws Exception{
		return sqlSession.delete(namespace+"setDelete",qnaDTO);
	}
	
	public int setReply(QnaDTO qnaDTO) throws Exception{
		
		return sqlSession.selectOne(namespace+"setReply",qnaDTO);
	}
	
}

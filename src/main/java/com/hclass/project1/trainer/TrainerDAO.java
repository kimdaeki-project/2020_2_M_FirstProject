package com.hclass.project1.trainer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hclass.project1.util.Pager;


@Repository
public class TrainerDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.hclass.project1.trainer.TrainerDAO.";
	
	public List<TrainerDTO> getSearchList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearchList", pager);
	}
	
	public List<TrainerDTO> getSearch(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearch", pager);
	}
	
	public long getCount(Pager pager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount",pager);
	}
	
	public TrainerDTO getTrainerPage(TrainerDTO trainerDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getTrainerPage", trainerDTO);
	}
}

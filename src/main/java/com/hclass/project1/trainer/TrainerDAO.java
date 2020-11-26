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
	
	// 검색창 검색 조회
	public List<TrainerDTO> getSearchList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearchList", pager);
	}
	
	// 상세조건 검색 조회
	public List<TrainerDTO> getSearch(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSearch", pager);
	}
	
	// 검색창 검색 Count조회
	public long getCount(Pager pager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount",pager);
	}
	
	// 상세조건검색  Count조회
	public long getDetailCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetailCount",pager);
	}
	
	// 트레이너 상세 페이지 확인
	public TrainerDTO getTrainerPage(TrainerDTO trainerDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getTrainerPage", trainerDTO);
	}
}

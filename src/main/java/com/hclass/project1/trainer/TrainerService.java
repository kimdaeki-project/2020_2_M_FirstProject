package com.hclass.project1.trainer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hclass.project1.util.Pager;

@Service
public class TrainerService {

	@Autowired
	private TrainerDAO trainerDAO;
	
	// 검색창 검색
	public List<TrainerDTO> getSearchList(Pager pager)throws Exception{
		pager.makeRow();
		pager.setTotalCount(trainerDAO.getCount(pager));
		pager.makePage();
		
		return trainerDAO.getSearchList(pager);
	}
	
	// 상세조건 검색 
	public List<TrainerDTO> getSearch(Pager pager) throws Exception{
		pager.makeRow();
		pager.setTotalCount(trainerDAO.getDetailCount(pager));
		pager.makePage();
		
		return trainerDAO.getSearch(pager);
	}

	// 트레이너 상세 페이지
	public TrainerDTO getTrainerPage(TrainerDTO trainerDTO)throws Exception{
	
		return trainerDAO.getTrainerPage(trainerDTO);
	}
	
	
	
}

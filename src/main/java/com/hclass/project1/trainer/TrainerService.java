package com.hclass.project1.trainer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hclass.project1.util.Pager;

@Service
public class TrainerService {

	@Autowired
	private TrainerDAO trainerDAO;
	
	public List<TrainerDTO> getSearchList(Pager pager)throws Exception{
		pager.makeRow();
		pager.setTotalCount(trainerDAO.getCount(pager));
		pager.makePage();
		
		return trainerDAO.getSearchList(pager);
	}
	
	public List<TrainerDTO> getSearch(Pager pager) throws Exception{
		pager.makeRow();
		pager.setTotalCount(trainerDAO.getDetailCount(pager));
		pager.makePage();
		
		return trainerDAO.getSearch(pager);
	}

	
	public TrainerDTO getTrainerPage(TrainerDTO trainerDTO)throws Exception{
	
		return trainerDAO.getTrainerPage(trainerDTO);
	}
	
	
	
}

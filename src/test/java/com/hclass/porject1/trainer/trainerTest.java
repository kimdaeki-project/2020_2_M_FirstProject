package com.hclass.porject1.trainer;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.trainer.TrainerDAO;
import com.hclass.project1.trainer.TrainerDTO;

public class trainerTest extends MyTestCase{

	@Autowired
	private TrainerDAO trainerDAO;
	@Test
	public void test() throws Exception{
		TrainerDTO trainerDTO =new TrainerDTO();
		trainerDTO.setName("김도윤");
		trainerDAO.getTrainerPage(trainerDTO);
	}

}

package com.hclass.project1.memberDTO;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.member.MemberDAO;
import com.hclass.project1.trainer.MemberTrainerDTO;

public class MemberDTOTest extends MyTestCase {
	
	@Autowired
	private MemberDAO memberDAO; 

	@Test
	public void test() throws Exception {
		MemberTrainerDTO trDTO =new MemberTrainerDTO();
		trDTO.setId("trainer1");
		trDTO.setPw("trainer");
		trDTO.setName("trainer1");
		trDTO.setAge(22);
		trDTO.setEmail("trainer1");
		trDTO.setPhone("01012345678");
		trDTO.setAddress("trainer1");
		trDTO.setGender("남자");
		trDTO.setBusiness("o");
		trDTO.setGym("체육관");
		int result = memberDAO.setTrainer(trDTO);
		assertEquals(1, result);
	}

}

package com.hclass.project1.memberDTO;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.member.MemberDAO;
import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.trainer.MemberTrainerDTO;

public class MemberDTOTest extends MyTestCase {
	
	@Autowired
	private MemberDAO memberDAO; 

	@Test
	public void test() throws Exception {
		MemberDTO trDTO =new MemberDTO();
		trDTO.setId("trainer2");
		trDTO.setPw("trainer");
		trDTO.setName("trainer2");
		trDTO.setAge(22);
		trDTO.setEmail("trainer2");
		trDTO.setPhone("01064143095");
		trDTO.setGender("남자");
		trDTO.setTrainer("M");
		trDTO.setAddress("");
		trDTO.setGym("");
		trDTO.setBusiness("");
		int result = memberDAO.setOne(trDTO);
		assertEquals(1, result);
	}
	//@Test
	public void getOn() throws Exception{
		MemberDTO memberDTO =new MemberDTO() {
		};
		memberDTO.setId("popopo");
		memberDTO= memberDAO.getOne(memberDTO);
		assertNull(memberDTO);
	}

}

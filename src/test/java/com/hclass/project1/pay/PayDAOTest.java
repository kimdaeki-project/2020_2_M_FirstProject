package com.hclass.project1.pay;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;

public class PayDAOTest extends MyTestCase {

	@Autowired
	private PayDAO payDAO;

	@Test
	public void getPaymentOne()throws Exception{
		PayDTO payDTO = new PayDTO();
		
		payDTO.setId("gb_test2");
		
		payDTO = payDAO.getPaymentOne(payDTO);
		
		System.out.println(payDTO.getRegDate());
		System.out.println(payDTO.getTime());
		
		assertNotNull(payDTO);
	}
}

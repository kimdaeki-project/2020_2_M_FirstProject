package com.hclass.project1.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayService {
	@Autowired
	private PayDAO payDAO;
	
	public int setCharge(PayDTO payDTO)throws Exception{
		return payDAO.setCharge(payDTO);
	}
	
	public List<PayDTO> getPaymentList(PayDTO payDTO)throws Exception{
		return payDAO.getPaymentList(payDTO);
	}
	
}

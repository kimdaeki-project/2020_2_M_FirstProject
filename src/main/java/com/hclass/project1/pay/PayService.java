	package com.hclass.project1.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hclass.project1.member.MemberDTO;

@Service
public class PayService {
	@Autowired
	private PayDAO payDAO;
	
	// 예약하기
	public int setCharge(PayDTO payDTO)throws Exception{
		return payDAO.setCharge(payDTO);
	}
	// 트레이너 전용 예약현황
	public List<PayDTO> getPaymentList(PayDTO payDTO)throws Exception{
		return payDAO.getPaymentList(payDTO);
	}
	// 나의 예약현황
	public PayDTO getPaymentMyInfo(PayDTO payDTO) throws Exception{
		return payDAO.getPaymentMyInfo(payDTO);
	}
	// 중복 예약 체크
	public PayDTO getMemberIdCheck(PayDTO payDTO) throws Exception{
		return payDAO.getMemberIdCheck(payDTO);
	}
	// 예약 취소
	public int setPaymentDelete(PayDTO payDTO) throws Exception{
		return payDAO.setPaymentDelete(payDTO); 
	}
	// 예약 변경
	public int setPaymentUpdate(PayDTO payDTO) throws Exception{
		return payDAO.setPaymentUpdate(payDTO);
	}
	
	// 삭제 시 비밀번호 재 확인
	public MemberDTO getMemberPwCheck(MemberDTO memberDTO) throws Exception{
		return payDAO.getMemberPwCheck(memberDTO);
	}
	
	// 날짜 지난 데이터 삭제
	public int setPastDelete(PayDTO payDTO) throws Exception{
		return payDAO.setPastDelete(payDTO);
	}
}

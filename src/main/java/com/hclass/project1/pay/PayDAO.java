package com.hclass.project1.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.hclass.project1.pay.PayDAO.";
	
	// 예약하기
	public int setCharge(PayDTO payDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setCharge", payDTO);
	}
	// 트레이너 전용 예약현황
	public List<PayDTO> getPaymentList(PayDTO payDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPaymentList", payDTO);
	}
	// 나의 예약정보
	public PayDTO getPaymentMyInfo(PayDTO payDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPaymentMyInfo", payDTO);
	}
	// 예약은 아이디당 한번으로 아이디 중복체크
	public PayDTO getMemberIdCheck(PayDTO payDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getMemberIdCheck", payDTO);
	}
	// 예약 취소
	public int setPaymentDelete(PayDTO payDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setPaymentDelete", payDTO);
	}
	// 예약 변경
	public int setPaymentUpdate(PayDTO payDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setPaymentUpdate", payDTO);
	}
	
}

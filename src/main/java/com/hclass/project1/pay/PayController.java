package com.hclass.project1.pay;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.member.MemberDTO;

@Controller
@RequestMapping("/payment/**")
public class PayController {

	@Autowired
	private PayService payService;
		
	// 예약 날짜 변경
	@PostMapping("paymentUpdate")
	public ModelAndView setPaymentUpdate(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = payService.setPaymentUpdate(payDTO);
		if(result > 0 ) {
			mv.addObject("msg", "예약이 변경되었습니다.");
			mv.addObject("path", "../");
		}else {
			mv.addObject("msg", "실패");
			mv.addObject("path", "../");
		}
		
		mv.setViewName("common/result");
		
		return mv;
	}
	
	// 날짜변경 폼 이동
	@GetMapping("paymentUpdate")
	public ModelAndView setPaymentUpdate(PayDTO payDTO, String id) throws Exception{
		ModelAndView mv = new ModelAndView();
		payDTO = payService.getPaymentMyInfo(payDTO);
		
		mv.addObject("upDto", payDTO);
		mv.setViewName("payment/paymentUpdate");
		return mv;
	}
	
	// 예약 취소하기
	@GetMapping("paymentDelete")
	public ModelAndView setPaymentDelete(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = payService.setPaymentDelete(payDTO);
		String message = "잘못된 경로입니다.";
		if(result>0) {
			message = "예약이 취소되었습니다.";
		}
		mv.addObject("msg", message);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	// 중복 예약 ID 체크하기
	@GetMapping("memberIdCheck")
	public ModelAndView getMemberIdCheck(PayDTO payDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		payDTO = payService.getMemberIdCheck(payDTO);
		
		int result = 1; //이미 예약 중
		if(payDTO == null) {
			result = 0;
		}
		
		System.out.println(result);
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	// 예약 취소시 비밀번호 재 확인
	@PostMapping("memberPwCheck")
	public ModelAndView getMemberPwCheck(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO = payService.getMemberPwCheck(memberDTO);
		
		int pwResult = 1; // 맞는 정보
		if(memberDTO == null) {
			pwResult = 0; // 틀린 정보
		}
		
		mv.addObject("msg", pwResult);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	// 예약 취소 폼 이동
	@GetMapping("memberPwCheck")
	public ModelAndView getMemberPwCheck() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("payment/memberPwCheck");
		
		return mv;
	}
	
	// 나의 예약 정보 확인
	@GetMapping("paymentMyInfo")
	public ModelAndView getPaymentMyInfo(PayDTO payDTO)throws Exception{
		ModelAndView mv = new ModelAndView();

		payDTO = payService.getPaymentMyInfo(payDTO);

		mv.addObject("pay", payDTO);
		mv.setViewName("payment/paymentMyInfo");
		return mv;
	}
	
	// 트레이너 전용 (회원들 예약 현황) 확인
	@GetMapping("paymentInfo")
	public ModelAndView getPaymentInfo(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<PayDTO> ar = payService.getPaymentList(payDTO);
		
		mv.addObject("payinfo", ar);
		
		mv.setViewName("payment/paymentInfo");
		return mv;
	}
	
	// 예약 정보 입력
	@PostMapping("paymentPage")
	public ModelAndView setCharge(PayDTO payDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO = (MemberDTO)session.getAttribute("member");
		
		
		int result = payService.setCharge(payDTO);
		
		if(result>0) {
			String message = "예약 정보 입력완료";
			mv.addObject("msg", message);
			mv.addObject("path", "./paymentMyInfo?id="+memberDTO.getId());
			mv.setViewName("common/result");
		}else {
			System.out.println("fail");
		}
		
		return mv;
	}
	
	// 예약 정보 입력 폼 이동
	@GetMapping("paymentPage")
	public ModelAndView setCharge()throws Exception{
		ModelAndView mv = new ModelAndView();
	
	
		mv.setViewName("payment/paymentPage");
		
		return mv;
	}
	
	// 결제 아임포트 API
	@GetMapping("pay")
	public ModelAndView pay()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("payment/pay");
		
		return mv;
	}
	
}

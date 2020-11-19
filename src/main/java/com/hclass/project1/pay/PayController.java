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
	
	@GetMapping("paymentMyInfo")
	public ModelAndView getPaymentMyInfo(PayDTO payDTO,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO = (MemberDTO)session.getAttribute("member");
		payDTO = payService.getPaymentMyInfo(payDTO);
		mv.addObject("myInfo", memberDTO);
		mv.addObject("pay", payDTO);
		mv.setViewName("payment/paymentMyInfo");
		return mv;
	}
	
	@GetMapping("paymentInfo")
	public ModelAndView getPaymentInfo(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<PayDTO> ar = payService.getPaymentList(payDTO);
		
		mv.addObject("payinfo", ar);
		
		mv.setViewName("payment/paymentInfo");
		return mv;
	}
	
	@GetMapping("paymentIng")
	public ModelAndView setCash() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment/paymentIng");
		
		return mv;
	}
	
	@PostMapping("paymentPage")
	public ModelAndView setCharge(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = payService.setCharge(payDTO);
		
		if(result>0) {
			String message = "예약 정보 입력완료";
			mv.addObject("msg", message);
			mv.addObject("path", "./paymentIng");
			mv.setViewName("common/result");
		}else {
			System.out.println("fail");
		}
		
		return mv;
	}
	
	@GetMapping("paymentPage")
	public ModelAndView setCharge()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("payment/paymentPage");
		
		return mv;
	}
	
	@GetMapping("pay")
	public ModelAndView pay()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("payment/pay");
		
		return mv;
	}
}

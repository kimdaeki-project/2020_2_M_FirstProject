package com.hclass.project1.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payment/**")
public class PayController {

	@Autowired
	private PayService payService;
	
	@GetMapping("paymentSelect")
	public ModelAndView getPaymentOne(PayDTO payDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		payDTO = payService.getPaymentOne(payDTO);
		
		mv.addObject("payOne", payDTO);
		mv.setViewName("payment/paymentSelect");
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

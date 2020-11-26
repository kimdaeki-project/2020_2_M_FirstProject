package com.hclass.project1.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hclass.project1.pay.PayDTO;
import com.hclass.project1.pay.PayService;

@Component
public class PayPastDeleteInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private PayService payService;
	
	// 예약 현황으로 기간, 시간이 지난 정보 Controller 진입 후 최신화
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		PayDTO payDTO = new PayDTO();
		
		payService.setPastDelete(payDTO);
				
		super.postHandle(request, response, handler, modelAndView);
	}
	
}

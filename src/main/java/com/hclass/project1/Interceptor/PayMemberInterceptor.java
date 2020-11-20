package com.hclass.project1.Interceptor;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.pay.PayDAO;
import com.hclass.project1.pay.PayDTO;

@Component
public class PayMemberInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		String method = request.getMethod();
		
		if(method.equals("POST")) {
			return;
		}
		
		HttpSession session = request.getSession();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		String memberId = memberDTO.getId();
		
		Map<String, Object> model = modelAndView.getModel();
		PayDTO payDTO = (PayDTO)model.get("pay");
		String paymentId = payDTO.getId();
		
		if(!memberId.contentEquals(paymentId)) {
			modelAndView.addObject("msg", "권한이 없는 경로입니다.");
			modelAndView.addObject("path", "../");
			modelAndView.setViewName("common/result");
		}
		
	}
	
}

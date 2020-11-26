package com.hclass.project1.Interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hclass.project1.member.MemberDTO;

@Component
public class PayTrainerInterceptor extends HandlerInterceptorAdapter{

	// 트레이너 전용 회원 예약 현황 확인은 일반 회원 접근 불가
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		boolean check = false;
		if(memberDTO.getTrainer().equals("T")) {
			check = true;
		}else {
			request.setAttribute("msg", "권한이 없습니다.");
			request.setAttribute("path", "../");
			
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return check;
	}
}

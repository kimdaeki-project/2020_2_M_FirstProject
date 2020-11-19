package com.hclass.project1.qna;

import java.util.List;

<<<<<<< Updated upstream
//import javax.annotation.processing.Generated;
=======
import javax.annotation.processing.Generated;

import javax.annotation.processing.Generated;

>>>>>>> Stashed changes
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Autowired
	private QnaService qnaService ;
	
<<<<<<< Updated upstream
=======

	@PostMapping("qnaUpdate")
	public ModelAndView setUpdate(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
>>>>>>> Stashed changes
	@GetMapping("qnaUpdate")
	public ModelAndView setUpdate(QnaDTO qnaDTO) throws Exception{
		ModelAndView mv =new ModelAndView();
<<<<<<< Updated upstream
=======
		QnaDTO qnaDTO =new QnaDTO();
		qnaDTO.setNum(num);
		qnaDTO = qnaService.getOne(qnaDTO);

	@GetMapping("qnaUpdate")
	public ModelAndView setUpdate(QnaDTO qnaDTO) throws Exception{
		ModelAndView mv =new ModelAndView();

>>>>>>> Stashed changes
		mv.addObject("qna",qnaDTO);
		mv.setViewName("qna/qnaUpdate");
		return mv;
	}
	@GetMapping("qnaSelect")
	public ModelAndView getOne(QnaDTO qnaDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO =new MemberDTO();
		memberDTO=(MemberDTO) session.getAttribute("member");
		qnaDTO = qnaService.getOne(qnaDTO);
		mv.addObject("member", memberDTO);
		mv.addObject("qna",qnaDTO);
		mv.setViewName("qna/qnaSelect");
		return mv;
	}
	
	@GetMapping("qnaList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<QnaDTO> ar = qnaService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("qna/qnaList");
		return mv;
		
	}
	
	@PostMapping("qnaWrite")
	public ModelAndView setOne(QnaDTO qnaDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setOne(qnaDTO);
		String message ="입력 실패";
		if(result>0) {
			message ="입력 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		return mv;
	}
	
	
	@GetMapping("qnaWrite")
	public ModelAndView setOne(HttpSession Session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberdto = new MemberDTO();
		memberdto = (MemberDTO) Session.getAttribute("member");
		mv.addObject("member", memberdto);
		mv.setViewName("qna/qnaWrite");
		return mv;
	}
}

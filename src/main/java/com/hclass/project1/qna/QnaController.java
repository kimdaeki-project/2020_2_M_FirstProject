package com.hclass.project1.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
// import javax.annotation.processing.Generated;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.qna.qnafile.QnaFileDTO;
import com.hclass.project1.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Autowired
	private QnaService qnaService ;
	
	@PostMapping("qnaReply")
	public ModelAndView setReply(QnaDTO qnaDTO ) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setReply(qnaDTO);
		System.out.println("확인");
		String message = "입력 실패";
		if(result>0) {
			message = "답글 입력 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./qnaList");
		mv.setViewName("common/result");
		return mv;	
	}
	
	
	@GetMapping("qnaReply")
	public ModelAndView setReply(QnaDTO qnaDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO= new MemberDTO();
		qnaDTO = qnaService.getOne(qnaDTO);
		
		memberDTO = (MemberDTO) session.getAttribute("member");
		mv.addObject("qnareply", qnaDTO);
		mv.addObject("member",memberDTO);
		mv.setViewName("board/boardReply");
		return mv;
		
	}
	@GetMapping("qnaDelete")
	public ModelAndView setDelete(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setDelete(qnaDTO);
		String message = "삭제 실패";
		if(result>0) {
			message = "삭제 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./qnaList");
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("qnaUpdate")
	public ModelAndView setUpdate(QnaDTO qnaDTO,MultipartFile[] files,HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =qnaService.setUpdate(qnaDTO,files,session);
		String message = "글 수정 실패";
		if(result>0) {
			message = "글 수정 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./qnaList");
		mv.setViewName("common/result");
		return mv;
	}
	@GetMapping("qnaUpdate")
	public ModelAndView setUpdate(Long num) throws Exception{
		ModelAndView mv =new ModelAndView();
		QnaDTO qnaDTO =new QnaDTO();
		qnaDTO.setNum(num);
		qnaDTO = qnaService.getOne(qnaDTO);
		mv.addObject("dto",qnaDTO);
		mv.addObject("board","qna");
		mv.setViewName("board/boardUpdate");
		return mv;
	}
	@GetMapping("qnaSelect")
	public ModelAndView getOne(QnaDTO qnaDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO =new MemberDTO();
		QnaFileDTO qnafileDTO =new QnaFileDTO();
		int result = qnaService.hitUp(qnaDTO);
		qnafileDTO.setNum(qnaDTO.getNum());
		List<QnaFileDTO> ar= qnaService.getFile(qnafileDTO);
		memberDTO=(MemberDTO) session.getAttribute("member");
		qnaDTO = qnaService.getOne(qnaDTO);
		mv.addObject("list",ar);
		mv.addObject("member", memberDTO);
		mv.addObject("dto",qnaDTO);
		mv.addObject("board","Qna");
		mv.setViewName("board/boardSelect");
		return mv;
	}
	
	@GetMapping("qnaList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<QnaDTO> ar = qnaService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("board","qna");
		mv.setViewName("board/boardList");
		return mv;
		
	}
	
	@PostMapping("qnaWrite")
	public ModelAndView setOne(QnaDTO qnaDTO,MultipartFile[] files, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =0;
		System.out.println("qnaWrite확인");
		result = qnaService.setOne(qnaDTO, files, session);
		System.out.println(result);
		String message ="입력 실패";
		if(result>0) {
			message ="입력 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./qnaList");
		mv.setViewName("common/result");
		return mv;
	}
	
	
	@GetMapping("qnaWrite")
	public ModelAndView setOne(HttpSession Session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberdto = new MemberDTO();
		memberdto = (MemberDTO) Session.getAttribute("member");
		mv.addObject("member", memberdto);
		mv.addObject("board","qna");
		mv.setViewName("board/boardWrite");
		return mv;
	}
}

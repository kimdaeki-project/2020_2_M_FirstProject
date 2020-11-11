package com.hclass.project1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@GetMapping("memberAgrement")
	public ModelAndView memberAgrememnt() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/memberAgrement");
		return mv;
	}
	
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(MemberDTO memberDTO,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberDTO.getId());
		System.out.println(memberDTO.getPw());
		memberDTO=memberService.memberLogin(memberDTO);
		mv.setViewName("member/memberLogin");
		return mv;
	}
	@GetMapping("memberLogin")
	public ModelAndView memberLogin()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberLogin");
		return mv;
	}
	//회원가입시 중복되는 값 체크
	@GetMapping("memberEmailCheck")
	public ModelAndView getEmail(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberDTO=memberService.getEmail(memberDTO);
		int result=1;
		if(memberDTO==null) {
			result=0;
		}
		System.out.println(result);
		mv.addObject("msg",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("memberPhoneCheck")
	public ModelAndView getPhone(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberDTO.getPhone());
		memberDTO=memberService.getPhone(memberDTO);
		int result=1;
		if(memberDTO==null) {
			result=0;
		}
		System.out.println(result);
		mv.addObject("msg",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	//회원가입 페이지로 이동!!

	@GetMapping("memberIdCheck")
	public ModelAndView getOne(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberDTO.getId());
		memberDTO=memberService.getOne(memberDTO);
		
		int result=1;
		if(memberDTO==null) {
			result=0;
		}
		System.out.println(result);
		mv.addObject("msg",result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	@GetMapping("memberJoin")
	public ModelAndView setOne(String division) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(division);
		if(division.equals("Y")) {
			mv.addObject("classification","trainer");
			mv.setViewName("member/memberJoin");
		}
		else {
			mv.addObject("classification","member");
			mv.setViewName("member/memberJoin");
		}
		return mv;
	}
	@PostMapping("memberJoin")
	public ModelAndView setOne(MemberDTO memberDTO, MultipartFile photo,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberDTO.getTrainer());
		int result=0;
		if(memberDTO.getTrainer().equals("M")) {
			memberDTO.setAddress("");
			memberDTO.setGym("");
			memberDTO.setBusiness("");	
			result = memberService.setOne(memberDTO);
		}
		else {
		result = memberService.setOne(memberDTO,photo,session);
		}
		String message ="가입실패";
		if(result>0) {
			message ="가입 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		return mv;
	}
}

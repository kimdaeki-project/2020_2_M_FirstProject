package com.hclass.project1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.trainer.MemberTrainerDTO;

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
		memberDTO=memberService.memberLogin(memberDTO);
		mv.setViewName("home");
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
	@PostMapping("memberJoinTrainer")
	public ModelAndView setTrainer(MemberTrainerDTO membertrainerDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("classification","trainer");
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@GetMapping("memberJoinTrainer")
	public ModelAndView setTrainer() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("classification","trainer");
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@GetMapping("memberJoin")
	public ModelAndView setOne() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("classification","member");
		mv.setViewName("member/memberJoin");
		return mv;
	}
	@PostMapping("memberJoin")
	public ModelAndView setOne(MemberDTO memberDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(memberDTO.getId());
		int result = memberService.setOne(memberDTO);
		mv.setViewName("home");
		return mv;
	}
}

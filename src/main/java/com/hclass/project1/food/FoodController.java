package com.hclass.project1.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/section/**")
public class FoodController {
	
	// 메인 화면의 TOP4 HealthFood 판매 사이트 이동 서비스 ************************************************
	
	@GetMapping("getFood")
	public ModelAndView getFood() throws Exception{
		
		ModelAndView mv = new ModelAndView();
				
		mv.setViewName("https://healthhelper.kr/");
		
		return mv;
		
	}
	
	@GetMapping("gethealthFood")
	public ModelAndView gethealthFood()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("https://www.gpnmall.kr/product/list.html?cate_no=68");
		
		return mv;
	}
	

	@GetMapping("getfoodHealth")
	public ModelAndView getfoodHealth() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("https://www.gpnmall.kr/product/list.html?cate_no=71");
		
		return mv;
	}
	
	@GetMapping("gethealthyFood")
	public ModelAndView gethealthyFood() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("https://www.whey10.co.kr/goods/view?no=79");
		
		return mv;
	}
	
}

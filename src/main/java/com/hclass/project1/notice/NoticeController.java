package com.hclass.project1.notice;

<<<<<<< Updated upstream
<<<<<<< Updated upstream
import java.util.ArrayList;
import java.util.List;

=======
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.qna.QnaDTO;
import com.hclass.project1.util.Pager;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

>>>>>>> Stashed changes
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.util.Pager;
import com.hclass.project1.notice.NoticeDTO;


@Controller
@RequestMapping(value = "/notice/**")
public class NoticeController {

	@Autowired
<<<<<<< Updated upstream
	private NoticeService noticeService;

	
	@RequestMapping(value = "noticeSelect")
	public void noticeSelect(long num, Model model) throws Exception {
		System.out.println("notice Select");
		NoticeDTO noticeDTO = noticeService.noticeSelect(num);
		model.addAttribute("dto", noticeDTO);
	}
	
	@RequestMapping(value = "noticeList")
	public ModelAndView noticeList(Pager pager) throws Exception {

		System.out.println("kind : "+pager.getKind());
		System.out.println("search : "+pager.getSearch());

		ModelAndView mv= new ModelAndView();
		List<NoticeDTO> ar = noticeService.noticeList(pager);

		mv.addObject("lists", ar);
		mv.addObject("pager", pager);

		mv.setViewName("notice/noticeList");
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeservice;
>>>>>>> Stashed changes

		return mv;
	}
=======
	private NoticeSerivce noticeservice;
	
	
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeservice.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("notice/noticeList");
		return mv;
		
	}
	
>>>>>>> Stashed changes
}

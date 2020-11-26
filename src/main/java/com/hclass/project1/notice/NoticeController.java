package com.hclass.project1.notice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.notice.noticefile.NoticeFileDTO;
import com.hclass.project1.util.Pager;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping ("/notice/**")
public class NoticeController {

   @Autowired
   private NoticeService noticeservice;
   
   @GetMapping("noticeSelect")
   public ModelAndView getOne(NoticeDTO noticeDTO,HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();
      MemberDTO memberDTO =new MemberDTO();
      int result = noticeservice.hitUp(noticeDTO);
      NoticeFileDTO noticefileDTO =new NoticeFileDTO();
      noticefileDTO.setNum(noticeDTO.getNum());
      List<NoticeFileDTO> ar = noticeservice.getFile(noticefileDTO);
      memberDTO=(MemberDTO) session.getAttribute("member");
      noticeDTO=noticeservice.getOne(noticeDTO);
      mv.addObject("list", ar);
      mv.addObject("member", memberDTO);
      mv.addObject("dto",noticeDTO);
      mv.addObject("board", "notice");
      mv.setViewName("board/boardSelect");
      return mv;
   }
   
   @GetMapping("noticeList")
   public ModelAndView getList(Pager pager) throws Exception{
      ModelAndView mv = new ModelAndView();
      List<NoticeDTO> ar = noticeservice.getList(pager);
      mv.addObject("list", ar);
      mv.addObject("board","notice");
      mv.addObject("pager", pager);
      mv.setViewName("board/boardList");
      return mv;
      
   }
   
   @PostMapping("noticeWrite")
   public ModelAndView setOne(NoticeDTO noticeDTO,MultipartFile[] files,HttpSession session) throws Exception{
      ModelAndView mv = new ModelAndView();
      int result = noticeservice.setOne(noticeDTO, files, session);
      System.out.println(noticeDTO.getNum());
      String message ="입력 실패";
      if(result>0) {
         message ="입력 성공";
      }
      mv.addObject("msg",message);
      mv.addObject("path", "./noticeList");
      mv.setViewName("common/result");
      return mv;
   }
   
   @GetMapping("noticeWrite")
   public ModelAndView setOne(HttpSession Session) throws Exception {
      ModelAndView mv = new ModelAndView();
      NoticeDTO noticeDTO = new NoticeDTO();
      noticeDTO = (NoticeDTO) Session.getAttribute("notice");
      mv.addObject("notice", noticeDTO);
      mv.addObject("board","notice");
      mv.setViewName("board/boadWrite");
      return mv;
   }
   
   @PostMapping("noticeUpdate")
	public ModelAndView setUpdate(NoticeDTO noticeDTO,MultipartFile[] files, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =noticeservice.setUpdate(noticeDTO,files,session);
		
		String message = "글 수정 실패";
		if(result>0) {
			message = "글 수정 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		return mv;
	}
   
	@GetMapping("noticeUpdate")
	public ModelAndView setUpdate(Long num) throws Exception{
		ModelAndView mv =new ModelAndView();
		NoticeDTO noticeDTO =new NoticeDTO();
		/* noticeDTO.setNum(num); */
		noticeDTO.setNum(num);
		noticeDTO = noticeservice.getOne(noticeDTO);
		System.out.println(noticeDTO.getWriter());
		mv.addObject("dto",noticeDTO);
		mv.addObject("board","notice");
		mv.setViewName("board/boardUpdate");
		return mv;
	}
	
	@GetMapping("noticeDelete")
	public ModelAndView setDelete(NoticeDTO noticeDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeservice.setDelete(noticeDTO);
		System.out.println(result);
		String message = "삭제 실패";
		if(result>0) {
			message = "삭제 성공";
		}
		mv.addObject("msg",message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		return mv;
	}
   
}
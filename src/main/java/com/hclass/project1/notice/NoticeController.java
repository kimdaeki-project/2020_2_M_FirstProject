package com.hclass.project1.notice;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping ("/notice/**")
public class NoticeController {

	@Inject
	NoticeDAO noticeDAO;

	@RequestMapping ("noticeList")
	public String noticeList (Model model) {
		List<NoticeDTO> list = noticeDAO.list();

		model.addAttribute("items", list);
		return "notice/noticeList";
	}

	// 공지 쓰기로 이동
	@RequestMapping("notice/noticeWrite")
	public String noticeWrite() {
		return "notice/noticeWrite";
	}

	@RequestMapping("notice/insert.do")
	public String insert(@ModelAttribute NoticeDTO dto) {
		noticeDAO.insert(dto);
		return "redirect:/notice/noticeList";
	}

	@RequestMapping("notice/view.do")
	public String view(@RequestParam String title, Model model) {
		model.addAttribute("dto", noticeDAO.detail(title));
		// 회원 정보를 model에 저장 변수명은 dto로...
		return "notice/noticeDetail";
		// detail.jsp로 포워딩
	}

	@RequestMapping("notice/update.do")
	public String update(@ModelAttribute NoticeDTO dto, Model model) {
			noticeDAO.update(dto);
			return "redirect:/notice/noticeList";
	}

}

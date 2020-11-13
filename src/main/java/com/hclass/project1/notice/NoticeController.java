package com.hclass.project1.notice;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping ("/notice/**")
public class NoticeController {

	@Inject
	NoticeDAO noticeDAO;

	@RequestMapping ("/notice/noticeList")
	public String noticeList (Model model) {
		List<NoticeDTO> list = noticeDAO.list();

		model.addAttribute("items", list);
		return "notice/noticeList";
	}
}

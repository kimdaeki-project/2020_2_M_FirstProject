package com.hclass.project1.notice;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping ("/notice/**")
public class NoticeController {
	
	@RequestMapping ("/notice/noticeList")
	public String noticeList () {
		return "notice/noticeList";
	}

}

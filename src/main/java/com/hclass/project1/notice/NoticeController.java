package com.hclass.project1.notice;

<<<<<<< Updated upstream
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	

	@RequestMapping("/notice/noticeList")
	public String noticeList() {
		return "notice/noticeList";
	}
	
=======
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping ("/notice/**")
public class NoticeController {
	
	@RequestMapping ("/notice/noticeList")
	public String noticeList () {
		return "notice/noticeList";
	}

>>>>>>> Stashed changes
}

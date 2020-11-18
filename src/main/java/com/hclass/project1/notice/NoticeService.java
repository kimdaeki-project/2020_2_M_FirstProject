package com.hclass.project1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hclass.project1.util.Pager;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	public NoticeDTO noticeSelect(long num)throws Exception{
		return noticeDAO.noticeSelect(num);
	}
	
	public List<NoticeDTO> noticeList(Pager pager) throws Exception {
		System.out.println("Service List");
		
		//** rownum 계산 
		pager.makeRow();
		
		//** page 계산
		long totalCount = noticeDAO.noticeCount(pager);
		pager.setTotalCount(totalCount);
		pager.makePage();
		
		return noticeDAO.noticeList(pager);
	}
}

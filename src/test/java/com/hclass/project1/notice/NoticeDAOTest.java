package com.hclass.project1.notice;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;

public class NoticeDAOTest extends MyTestCase{

	@Autowired
	private NoticeDAO noticeDAO;
	@Test
	public void test() throws Exception {
		NoticeDTO dto=new NoticeDTO();
		dto.setNum(1038);
		int result =noticeDAO.setDelete(dto);
		assertEquals(1, result);
	}

}

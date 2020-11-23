package com.hclass.project1.noticefile;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.notice.noticefile.NoticeFileDAO;
import com.hclass.project1.notice.noticefile.NoticeFileDTO;

public class NoticeFileDAOTest extends MyTestCase{

	@Autowired
	private NoticeFileDAO noticefileDAO;
	@Test
	public void test() throws Exception {
		NoticeFileDTO noticefileDTO =new NoticeFileDTO();
		noticefileDTO.setFileName("test1");
		noticefileDTO.setNum(1);
		noticefileDTO.setOriName("test1");
		int result = noticefileDAO.setFileOne(noticefileDTO);
		assertEquals(1, result);
	}

}

package com.hclass.porject1.test.qna;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.qna.qnafile.QnaFileDAO;
import com.hclass.project1.qna.qnafile.QnaFileDTO;

public class QnaFIleTest extends MyTestCase{

	@Autowired
	private QnaFileDAO qnafileDAO ;
	@Test
	public void test() throws Exception{
		QnaFileDTO dto =new QnaFileDTO();
		dto.setFileName("123");
		dto.setOriName("testoriname");
		dto.setId("popo12");
		int result = qnafileDAO.setFileOne(dto);
		assertEquals(1, result);
	}

}

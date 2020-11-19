package com.hclass.porject1.test.qna;

import static org.junit.Assert.*;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;
import com.hclass.project1.qna.QnaDAO;
import com.hclass.project1.qna.QnaDTO;

public class QnaDAOTest extends MyTestCase {

	@Autowired
	private QnaDAO qnaDAO;
	
	@Test
	public void SetOnetest() throws Exception{
		QnaDTO qnaDTO =new QnaDTO();
			for(int i=1; i<100;i++) {
				qnaDTO.setTitle("title"+1);
				qnaDTO.setWriter("popo12");
				qnaDTO.setContents("contents"+1);
				int result=qnaDAO.setOne(qnaDTO);
			}
	}
	//@Test
	public void getOne() throws Exception{
		QnaDTO qnaDTO =new QnaDTO();
		qnaDTO.setNum(3);
		qnaDTO = qnaDAO.getOne(qnaDTO);
		assertNotNull(qnaDTO);
		
	}
}

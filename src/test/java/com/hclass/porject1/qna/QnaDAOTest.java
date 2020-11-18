package com.hclass.porject1.qna;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hclass.project1.MyTestCase;

public class QnaDAOTest extends MyTestCase {

	@Autowired
	private QnaDAO qnaDAO;
	
	@Test
	public void SetOnetest() throws Exception{
		QnaDTO qnaDTO =new QnaDTO();
		qnaDTO.setTitle("title3");
		qnaDTO.setWriter("popo12");
		qnaDTO.setContents("contents3");
		int result=qnaDAO.setOne(qnaDTO);
	}

}

package com.hclass.project1.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	public int setOne(QnaDTO qnaDTO) throws Exception{
		
		return qnaDAO.setOne(qnaDTO);
	}
	
}

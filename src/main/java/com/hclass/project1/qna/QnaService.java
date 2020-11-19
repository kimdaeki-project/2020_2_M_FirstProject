package com.hclass.project1.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hclass.project1.util.Pager;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	public QnaDTO getOne(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.getOne(qnaDTO);
	}
	public List<QnaDTO> getList(Pager pager) throws Exception{
		
		pager.makeRow();
		pager.setTotalCount(qnaDAO.getCount(pager));
		pager.makePage();
		return qnaDAO.getList(pager);
	}
	
	public int setOne(QnaDTO qnaDTO) throws Exception{
		
		return qnaDAO.setOne(qnaDTO);
	}
	public int setUpdate(QnaDTO qnaDTO) throws Exception{
		
		return qnaDAO.setUpdate(qnaDTO);
	}
	public int setDelete(QnaDTO qnaDTO)throws Exception{
		return qnaDAO.setDelete(qnaDTO);
	}
	
	public int setReply(QnaDTO qnaDTO)throws Exception{
		
		return qnaDAO.setReply(qnaDTO);
	}
}

package com.hclass.project1.qna;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.qna.qnafile.QnaFileDAO;
import com.hclass.project1.qna.qnafile.QnaFileDTO;
import com.hclass.project1.util.FileSaver;
import com.hclass.project1.util.Pager;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private FileSaver filesaver;
	@Autowired
	private QnaFileDAO qnafileDAO;
	
	public List<QnaFileDTO>getFile(QnaFileDTO qnafileDTO) throws Exception{
		return qnafileDAO.getFile(qnafileDTO);
	}
	public QnaDTO getOne(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.getOne(qnaDTO);
	}
	public List<QnaDTO> getList(Pager pager) throws Exception{
		
		pager.makeRow();
		pager.setTotalCount(qnaDAO.getCount(pager));
		pager.makePage();
		return qnaDAO.getList(pager);
	}
	
	public int setOne(QnaDTO qnaDTO, MultipartFile[] photo, HttpSession session) throws Exception{
		String path =session.getServletContext().getRealPath("/resources/upload/Qna");
		File file2 = new File(path);
		System.out.println(path);
		String fileName="";
		int result = qnaDAO.setOne(qnaDTO);
		for(MultipartFile file :photo) {
			System.out.println("확인");
		if(file.getSize()!=0) {
			fileName = filesaver.saver(file2, file);
			QnaFileDTO qnafileDTO = new QnaFileDTO();
			qnafileDTO.setId(qnaDTO.getWriter());
			qnafileDTO.setOriName(file.getOriginalFilename());
			qnafileDTO.setFileName(fileName);
			qnafileDTO.setNum(qnaDTO.getNum());
			result = qnafileDAO.setFileOne(qnafileDTO);
			System.out.println(result);
		}
		}
	
		return result;
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
	public int hitUp(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.hitUp(qnaDTO);
	}
}

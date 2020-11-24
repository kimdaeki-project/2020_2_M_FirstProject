package com.hclass.project1.notice;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hclass.project1.notice.noticefile.NoticeFileDAO;
import com.hclass.project1.notice.noticefile.NoticeFileDTO;
import com.hclass.project1.qna.qnafile.QnaFileDTO;
import com.hclass.project1.util.Pager;
import com.hclass.project1.util.FileSaver;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private FileSaver filesaver;
	@Autowired
	private NoticeFileDAO noticeFileDAO;


	public List<NoticeDTO> getList(Pager pager) throws Exception{
		pager.makeRow();
		pager.setTotalCount(noticeDAO.getCount(pager));
		pager.makePage();
		return noticeDAO.getList(pager);
	}


	public NoticeDTO getOne(NoticeDTO noticeDTO) throws Exception{
		
		return noticeDAO.getOne(noticeDTO);
	}

	/*
	 * public int noticeWrite(NoticeDTO noticeDTO)throws Exception{ return
	 * noticeDAO.noticeWrite(noticeDTO); }
	 */

	public int setOne(NoticeDTO noticeDTO,MultipartFile[] photo, HttpSession session) throws Exception{
		String path =session.getServletContext().getRealPath("/resources/img/notice");
		File file2 = new File(path);
		String fileName="";
		int result =noticeDAO.setOne(noticeDTO);
		for(MultipartFile file :photo) {
		if(file.getSize()!=0) {
			fileName = filesaver.saver(file2, file);
			NoticeFileDTO noticefileDTO = new NoticeFileDTO();
			noticefileDTO.setNum(noticeDTO.getNum());
			noticefileDTO.setOriName(file.getOriginalFilename());
			noticefileDTO.setFileName(fileName);
			result = noticeFileDAO.setFileOne(noticefileDTO);
		}
		}
		return result;
	}
	
	public int setUpdate(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setUpdate(noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO)throws Exception{
		return noticeDAO.setDelete(noticeDTO);
	}
	
	public int hitUp(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.hitUp(noticeDTO);
	}

}


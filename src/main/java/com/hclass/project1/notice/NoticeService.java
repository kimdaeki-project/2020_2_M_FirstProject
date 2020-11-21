package com.hclass.project1.notice;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hclass.project1.notice.NoticeFileDAO;
import com.hclass.project1.notice.NoticeFileDTO;
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

	public int setOne(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setOne(noticeDTO);
	}

	public NoticeDTO getOne(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getOne(noticeDTO);
	}

	/*
	 * public int noticeWrite(NoticeDTO noticeDTO)throws Exception{ return
	 * noticeDAO.noticeWrite(noticeDTO); }
	 */

	public int setOne(NoticeDTO noticeDTO,MultipartFile photo, HttpSession session) throws Exception{
		String path =session.getServletContext().getRealPath("/resources/upload/notice");
		File file2 = new File(path);
		String fileName="";
		int result =noticeDAO.setOne(noticeDTO);
		if(photo.getSize()!=0) {
			fileName=filesaver.saver(file2, photo);
			NoticeFileDTO noticeFileDTO =new NoticeFileDTO();
			noticeFileDTO.setFileName(fileName);
			noticeFileDTO.setOriName(photo.getOriginalFilename());

			result = noticeFileDAO.setFileOne(noticeFileDTO);
		}

		return result;
	}
	
	public int setUpdate(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.setUpdate(noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO)throws Exception{
		return noticeDAO.setDelete(noticeDTO);
	}

}


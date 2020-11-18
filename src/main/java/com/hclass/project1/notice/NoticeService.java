package com.hclass.project1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hclass.project1.util.Pager;

@Service
public class NoticeService {

   @Autowired
   private NoticeDAO noticeDAO;

   public List<NoticeDTO> getList(Pager pager) throws Exception{

      pager.makeRow();
      pager.setTotalCount(noticeDAO.getCount(pager));
      pager.makePage();
      return noticeDAO.getList(pager);
   }

   public int setOne(NoticeDTO noticeDTO) throws Exception{
      return noticeDAO.setOne(noticeDTO);
   }

   public int noticeWrite(NoticeDTO noticeDTO)throws Exception{
      return noticeDAO.noticeWrite(noticeDTO);
   }

}
package com.hclass.project1.notice;

import java.util.List;

import org.springframework.stereotype.Repository;


@Repository
public interface NoticeDAO {
		public List<NoticeDTO> list();
		public void insert(NoticeDTO dto);
		public NoticeDTO detail(String title);
		public void delete(long bno);
		public void update(NoticeDTO dto);
		
}

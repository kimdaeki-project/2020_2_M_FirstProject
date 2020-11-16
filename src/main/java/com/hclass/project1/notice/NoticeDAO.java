package com.hclass.project1.notice;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDAO {
		public List<NoticeDTO> list();
		public void insert(NoticeDTO dto);
}

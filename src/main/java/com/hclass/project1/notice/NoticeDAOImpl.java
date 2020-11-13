package com.hclass.project1.notice;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Inject
	SqlSession SqlSession;
	
	@Override
	public List<NoticeDTO> list() {
		return SqlSession.selectList("notice.list");
	}

	@Override
	public void NoticeWrite(NoticeDTO dto) {
		// TODO Auto-generated method stub
		
	}


	}



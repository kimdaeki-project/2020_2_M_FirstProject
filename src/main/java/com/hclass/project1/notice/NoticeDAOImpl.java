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
	public void insert(NoticeDTO dto) {
		SqlSession.insert("notice.insert",dto);
	}

	@Override
	public NoticeDTO detail(String title) {
		return SqlSession.selectOne("notice.detail", title);
	}

	@Override
	public void delete(long bno) {
		SqlSession.delete("notice.delete", bno);
	}

	@Override
	public void update(NoticeDTO dto) {
		SqlSession.update("notice.update", dto);
	}	
}


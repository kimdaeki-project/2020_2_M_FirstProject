package com.hclass.project1.notice.noticefile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeFileDAO {

	@Autowired
	private SqlSession sqlSession;

	private final String namespace="com.hclass.project1.notiece.noticefile.NoticeFileDAO.";

	public int setFileOne(NoticeFileDTO noticeFileDTO) throws Exception {
		return sqlSession.insert(namespace+"setFileOne", noticeFileDTO);
	}

}

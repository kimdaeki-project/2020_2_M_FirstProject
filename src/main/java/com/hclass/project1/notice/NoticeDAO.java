package com.hclass.project1.notice;

public class NoticeDAO {

<<<<<<< Updated upstream
<<<<<<< Updated upstream
=======
>>>>>>> Stashed changes
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< Updated upstream
import com.hclass.project1.notice.NoticeDTO;
import com.hclass.project1.util.Pager;


@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private String namespace="com.hclass.project1.notice.NoticeDAO.";
	
	public List<NoticeDTO> noticeList(Pager pager) throws Exception {
		 return sqlSession.selectList(namespace+"noticeList",pager);
	}
	
	public NoticeDTO noticeSelect(long num) throws Exception {
		return sqlSession.selectOne(namespace+"noticeSelect", num);
	}
	
	public long noticeCount(Pager pager)throws Exception{
		return sqlSession.selectOne(namespace+"noticeCount", pager);
	}

=======
>>>>>>> Stashed changes
=======
import com.hclass.project1.util.Pager;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String namespace="com.hclass.porject1.notice.NoticeDAO.";

	public List<NoticeDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(namespace+"getList",pager);
	}

	public int setOne(NoticeDTO noticeDTO) throws Exception {
		return sqlSession.insert(namespace+"setOne",noticeDTO);
	}
	public long getCount(Pager pager) throws Exception {
		return sqlSession.selectOne(namespace+"getCount", pager);
	}
>>>>>>> Stashed changes
}

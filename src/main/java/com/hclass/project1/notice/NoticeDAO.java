package com.hclass.project1.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttribute;

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
   
   public NoticeDTO getOne(NoticeDTO noticeDTO) throws Exception{
      return sqlSession.selectOne(namespace+"getOne",noticeDTO);
   }
   
   public long getCount(Pager pager) throws Exception {
      return sqlSession.selectOne(namespace+"getCount", pager);
   }
   
   public int setUpdate(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.update(namespace+"setUpdate",noticeDTO);
	}
   
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.delete(namespace+"setDelete",noticeDTO);
	}
   public int hitUp(NoticeDTO noticeDTO) throws Exception{
	   return sqlSession.update(namespace+"hitUp", noticeDTO);
   }
//   public int noticeWrite(NoticeDTO noticeDTO)throws Exception{
//      return sqlSession.insert(namespace+"noticeWrite", noticeDTO);
//   }
   
	/*
	 * public void noticeHitUpdate(int num) throws Exception {
	 * sqlSession.update(namespace+".noticeHitUpdate", num); }
	 */
}
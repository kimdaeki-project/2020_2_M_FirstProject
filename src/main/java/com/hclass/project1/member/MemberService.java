package com.hclass.project1.member;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hclass.project1.member.memberfile.MemberFileDAO;
import com.hclass.project1.member.memberfile.MemberFileDTO;
import com.hclass.project1.util.FileSaver;


@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private FileSaver filesaver;
	@Autowired
	private MemberFileDAO memberfileDAO;
	
	public int memberDelete(MemberDTO memberDTO) throws Exception{
		return memberDAO.memberDelete(memberDTO);
	}
	public int setOne(MemberDTO memberDTO)throws Exception{
		return memberDAO.setOne(memberDTO);
	}
	
	public int setOne(MemberDTO memberDTO,MultipartFile photo, HttpSession session) throws Exception{
		String path =session.getServletContext().getRealPath("/resources/upload/member");
		File file2 = new File(path);
		String fileName="";
		int result =memberDAO.setOne(memberDTO);
		if(photo.getSize()!=0) {
			fileName=filesaver.saver(file2, photo);
			MemberFileDTO memberfileDTO =new MemberFileDTO();
			memberfileDTO.setId(memberDTO.getId());
			memberfileDTO.setFileName(fileName);
			System.out.println(fileName);
			memberfileDTO.setOriName(photo.getOriginalFilename());
			System.out.println(photo.getOriginalFilename());
			result = memberfileDAO.setFileOne(memberfileDTO);
			
		}
		
		return result;
	}
	public MemberDTO getOne(MemberDTO memberDTO) throws Exception{
		
		return memberDAO.getOne(memberDTO);
	}
	public MemberDTO getPhone(MemberDTO memberDTO) throws Exception{
		
		return memberDAO.getPhone(memberDTO);
	}
	public MemberDTO getEmail(MemberDTO memberDTO) throws Exception{
	
		return memberDAO.getEmail(memberDTO);
	}
	public MemberDTO memberLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.memberLogin(memberDTO);
	}
	public int memberUpdate(MemberDTO memberDTO) throws Exception{
		return memberDAO.memberUpdate(memberDTO);
	}
}

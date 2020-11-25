package com.hclass.project1.trainer;

import java.nio.channels.SeekableByteChannel;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hclass.project1.member.MemberDTO;
import com.hclass.project1.util.Pager;

import oracle.security.crypto.core.SHA1RandomBitsSource;


@Controller
@RequestMapping(value="/trainer/**")
public class TrainerController {

	@Autowired
	private TrainerService trainerService;
	
	@GetMapping("trainerReserve")
	@RequestMapping(value="trainerReserve", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView setTrainerReserve()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("trainer/trainerReserve");
		
		return mv;
	}
	
	@GetMapping("trainerReservation")
	public ModelAndView getGymselect() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/trainer/trainerReservation");
		
		return mv;
	}
	@GetMapping("trainerReserving")
	public ModelAndView getSelectgym() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/trainer/trainerReserving");
		
		return mv;
	}
	
	@GetMapping("trainerReserver")
	public ModelAndView getOnegym() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/trainer/trainerReserver");
		
		return mv;
	}
	

	
	@GetMapping("trainerInfoPage")
	public ModelAndView getTrainerPage(TrainerDTO trainerDTO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();

		trainerDTO = trainerService.getTrainerPage(trainerDTO);
		
		if(trainerDTO != null) {
			session.setAttribute("trainer", trainerDTO);
			//	mv.addObject("page", trainerDTO);
			mv.setViewName("trainer/trainerInfoPage");
		}else {
			mv.addObject("msg", "잘못된 경로입니다.");
			mv.addObject("path", "./trainerSearch");
			mv.setViewName("common/result");
		}
		System.out.println(trainerDTO.getName());
		System.out.println(trainerDTO.getAddress());
		return mv;
	}
	
	@GetMapping("trainerWindowSearch")
	public ModelAndView getSearchList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();

		List<TrainerDTO> ar = trainerService.getSearchList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("trainer/trainerWindowSearch");
		
		return mv;
	}
	@GetMapping("trainerSearch")
	public ModelAndView getTrainer()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("trainer/trainerSearch");
		return mv;
	}
	
	@GetMapping("trainerDetailSearch")
	public ModelAndView getSearch(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<TrainerDTO> ar = trainerService.getSearch(pager);
		
		mv.addObject("search", ar);
		mv.addObject("pager", pager);
		mv.setViewName("trainer/trainerDetailSearch");
		
		return mv;
	}
	
	@GetMapping("map")
	public ModelAndView getMap()throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		mv.setViewName("trainer/map");
		
		return mv;
	}
	
	@PostMapping("trainerReserve")
	public ModelAndView getReserve()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("trainer/trainerReserve");
		
		return mv;
	}
}

package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.service.LoadService;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.CfDTO;
import com.itbank.shallwego.RoomDTO;

@Controller
public class RoomController {
	
	@Autowired
	private LoadService ls;
	
//	@GetMapping("/room/room_detail")
//	public void room_detail() {}
	
	@GetMapping("/room/indexRoom")
	public ModelAndView indexRoom() {
		ModelAndView mav = new ModelAndView("room/indexRoom");
		List<AccommDTO> map = ls.selectIndexRoom();
		
		mav.addObject("list", map);
		return mav;
	}

	@GetMapping("/room/review")
	public void review() {}
	
	@GetMapping("/room/room_detail/{accomm_idx}")
	public ModelAndView room(@PathVariable int accomm_idx) {
		ModelAndView mav = new ModelAndView("room/room_detail");
		
		AccommDTO dto = ls.selectAccomm(accomm_idx);
		List<CfDTO> cfList = ls.selectCfList(accomm_idx);
		List<RoomDTO> roomList = ls.selectRoom(accomm_idx);
		
		mav.addObject("titles", dto.getImg_result());
		mav.addObject("acc_dto", dto);
		mav.addObject("roomList", roomList);
		mav.addObject("cfList", cfList);
		
		return mav;
	}

}

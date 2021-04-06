package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.CfDTO;
import com.itbank.shallwego.LoadDAO;
import com.itbank.shallwego.RoomDTO;

@Service
public class LoadService {

	@Autowired
	private LoadDAO dao;

	public AccommDTO selectAccomm(int accomm_idx) {
		AccommDTO dto = dao.selectAccomm(accomm_idx);
		if (dto.getAccomm_type() == 1) {
			// home ㄴ> 받아온 dto 의 accomm_type이 1이면 (호텔이면)
			dto.setTier_number(dao.selectTier(accomm_idx));
//	         ㄴ> dto에 tier_number를 set한다. 
		}
		String[] tmp = dto.getAccomm_img().split(",");
		dto.setImg_result(tmp);
		return dto;
	}

	public List<AccommDTO> selectIndexRoom() {
		return dao.selectIndexRoom();
	}

	public List<RoomDTO> selectRoom(int accomm_idx) {
	      List<RoomDTO> list = dao.selectRoom(accomm_idx);
	      for(RoomDTO room : list) {
//	      ㄴ> list 내부의 각각의 RoomDTO에 대하여
	         room.setImg_result(room.getRoom_img().split(","));
//	         ㄴ> 이미지 파일들이 ,로 구분되어 있는 room_img를 다시 ,로 split하여 
//	            img_result 배열에 각각 삽입.
	      }
	      return list;
	   }

	public List<CfDTO> selectCfList(int accomm_idx) {
		return dao.selectCfList(accomm_idx);
	}

}

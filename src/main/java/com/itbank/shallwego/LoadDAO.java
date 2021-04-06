package com.itbank.shallwego;

import java.util.List;

public interface LoadDAO {

	AccommDTO selectAccomm(int accomm_idx);

	List<AccommDTO> selectIndexRoom();

	List<RoomDTO> selectRoom(int accomm_idx);

	CfDTO selectCf(int cf_idx);

	List<CfDTO> selectCfList(int accomm_idx);

	int selectTier(int accomm_idx);

}

package com.itbank.shallwego;

import java.util.List;

public interface BoardDAO {

	String insertQa(BoardDTO dto);

	List<BoardDTO> selectInquiryList(BoardDTO dto);

}

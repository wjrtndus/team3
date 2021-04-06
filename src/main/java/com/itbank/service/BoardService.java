package com.itbank.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.BoardDAO;
import com.itbank.shallwego.BoardDTO;
import com.itbank.shallwego.MemberDTO;

@Service
public class BoardService {
	@Autowired
	private BoardDAO dao;

	// session을 넘기지 않는이유 
	// - session을 넘겨주면 내 로그인 정보 등 모든게 넘어가기 때문에,
	// 필요한것 (게시글)만 넘겨준다.
	public boolean insertQa(BoardDTO dto) {
		String dbQa = dao.insertQa(dto);
		return dbQa != null;
	}

	public List<BoardDTO> getInquiryList(MemberDTO user, BoardDTO dto) {
		return dao.selectInquiryList(dto);
	}

}

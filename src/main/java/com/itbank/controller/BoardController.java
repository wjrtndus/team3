package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.BoardService;
import com.itbank.shallwego.BoardDTO;
import com.itbank.shallwego.MemberDTO;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	// 내가 쓴 게시글이 있냐 없냐 (있으면 불러온다)
	@GetMapping("/qa")
	public void qa() {}
	public String qa(BoardDTO dto, HttpSession session) {
		MemberDTO user = (MemberDTO) session.getAttribute("login");
		List<BoardDTO> inquiryList = bs.getInquiryList(user, dto);
		session.setAttribute("inqueryList", inquiryList);
		return "board/qa";
	}
	
	
	// 내가 쓴 게시글이 등록에 성공했냐 못했냐 
	// - 세션을 적어준다. 왜냐하면 내가 로그인한 정보가 세션에 담겨있기 떄문이다.\
	@PostMapping(value = "/writeQa", consumes = "aplication/json;charset=utf8")
	@ResponseBody
	public String writeQa(BoardDTO dto) {
		boolean regist = bs.insertQa(dto);
		return regist ? "게시글이 등록되었습니다." : "게시글 등록에 실패하였습니다.";
	}
	// BoardDTO에 넘겨야 할 값이 너무 많으니까 
	// Customer_idx는 세션이 가지고있는 로그인 객체가 가지고있다.
	// 그러므로 그 세션에 있는 로그인 객체를 들고와서 
	// 그 안에있는 getUser_idx()를 가지고와서,
	// 걔를 setCustomer_idx로 셋팅해주는 것이다. 그 값을 그대로.
	
}

package com.itbank.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.MemberService;
import com.itbank.shallwego.MemberDTO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService mbs;

	
	@GetMapping("/join")
	public void join() {}
	
//	사용중인 id 체크 
	@PostMapping(value="/checkId", produces="application/text;charset=utf8")
	@ResponseBody
	public String checkId(String userid) {
		boolean alreadyExist = mbs.searchId(userid);
		return alreadyExist ? "이미 사용중인 ID입니다." : "사용가능한 ID입니다!";
	}

//	회원가입 
	@PostMapping("/join")
	public String join(MemberDTO dto, String pnum1, String pnum2, String pnum3) {
		dto.setPhone_number(pnum1 + pnum2 + pnum3); 
		int row = mbs.insertMember(dto);
		String viewName = row == 1 ? "redirect:/member/login" : "redirect:/member/join";
		return viewName;
	}
	
	@GetMapping("/login")
	public void login() {}
	
//	계정체크 (id/password일치) 
	@PostMapping(value = "/userCheck", produces = "application/json;charset=utf8" )
	@ResponseBody
	public String userCheck(MemberDTO user) {
		boolean alreadyExist = mbs.searchUser(user);
		return alreadyExist ? "" : "ID/Password가 일치하지 않습니다.";
	}

//	로그인 
	@PostMapping("/login")
	public String login(MemberDTO user, HttpSession session) {
		MemberDTO login = mbs.getMember(user);
		session.setAttribute("login", login);
		String viewName = login != null ? "redirect:/" : "redirect:/member/login";
		return viewName;
	}
	
	
//	비밀번호 찾기 시 DB에 있는 이메일인지 체크
	@PostMapping(value = "/emailCheck", produces = "application/json;charset=utf8")
	@ResponseBody
	public String checkEmail(String email, HttpSession session) {
		boolean alreadyExist = mbs.searchEmail(email);
		if(alreadyExist) {
			session.setAttribute("email", email);
		}
		return alreadyExist ? "" : "해당 이메일에 등록된 계정이 없습니다.";
	}

//	비밀번호 변경
	@PostMapping(value = "/pwChange", consumes = "application/text;charset=utf8")
	@ResponseBody
	public int pwChange(@RequestBody String userpw, HttpSession session) {
		String email = (String) session.getAttribute("email");
		int row = mbs.pwChange(userpw, email);
		session.removeAttribute("email");
		return row;
	}
	
	@GetMapping("/memberInfo")
	public void memberInfo() {}
	
	@PostMapping("registCoupon")
	public String registCoupon(@RequestParam HashMap<String, String> map) {
		int row = mbs.registCoupon(map);
		return "member/memberInfo";
	}
	
//	로그아웃 
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// produces : 생산 / consume : 소비 
	
	// 컨트롤러는 오직 경로를 지정해줄 뿐이고,
	// 디에오는 같을 수 있다.
	// 하나의 함수에 두개의 컨트롤러가 존재 할 수 있다.
	
}

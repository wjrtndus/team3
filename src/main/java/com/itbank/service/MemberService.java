package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.Hash;
import com.itbank.shallwego.MemberDAO;
import com.itbank.shallwego.MemberDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;

//	중복된 아이디 체크 
	public boolean searchId(String userid) {
		String dbId = dao.selectUserid(userid);
		return dbId != null;
	}
	
//	회원가입 
	public int insertMember(MemberDTO dto) {
		dto.setUserpw(Hash.getHash(dto.getUserpw()));
		return dao.insertMember(dto);
	}

//	계정체크 (id/password일치)
	public boolean searchUser(MemberDTO user) {
		user.setUserpw(Hash.getHash(user.getUserpw()));
		MemberDTO dbUser = dao.selectMember(user);
		return dbUser != null; //true
	}

//	로그인 
	public MemberDTO getMember(MemberDTO user) {
		// 해쉬처리하기 
		user.setUserpw(Hash.getHash(user.getUserpw()));
		return dao.selectMember(user);
	}
	
//	계정 이메일 체크 
	public boolean searchEmail(String email) {
		String dbEmail = dao.selectEmail(email);
		return dbEmail != null;
	}

//	비밀번호 변경
	public int pwChange(String userpw, String email) {
		String[] arr = userpw.toString().split("\"");
		userpw = arr[1];
		MemberDTO dto = new MemberDTO();
		dto.setUserpw(Hash.getHash(userpw));
		dto.setEmail(email);
		return dao.updatePw(dto);
	}

	public int registCoupon(HashMap<String, String> map) {
		map.put("coupon_serial_number", map.get("coupon_serial_number").toUpperCase());
		return dao.updateCoupon(map);
	}

}

package com.itbank.shallwego;

import java.util.HashMap;

public interface MemberDAO {

	String selectUserid(String userid);

	int insertMember(MemberDTO dto);

	MemberDTO selectMember(MemberDTO user);

	String selectEmail(String email);

	int updatePw(MemberDTO dto);

	int updateCoupon(HashMap<String, String> map);	
}

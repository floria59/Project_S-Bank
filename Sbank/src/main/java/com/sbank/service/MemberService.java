package com.sbank.service;

import com.sbank.domain.MemberVO;

public interface MemberService {
	
	String idCheck(String mem_id);
	
	void join(MemberVO vo);
	
	MemberVO login_ok(String mem_id);
	
	void loginTimeUpdate(String mem_id);

}

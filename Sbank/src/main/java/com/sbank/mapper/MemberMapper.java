package com.sbank.mapper;

import com.sbank.domain.MemberVO;

public interface MemberMapper {
	
	//아이디 중복체크
	String idCheck(String mem_id);
		
	//회원정보 저장
	void join(MemberVO vo);
		
	//로그인 인증
	MemberVO login_ok(String mem_id);
	
	// 로그인 시간 업데이트
	void loginTimeUpdate(String mem_id);
		
		

	
}

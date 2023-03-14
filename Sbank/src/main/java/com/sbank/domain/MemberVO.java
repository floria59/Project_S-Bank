package com.sbank.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	//mem_id, mem_name, mem_pw, mem_email, mem_phone, mem_nick, mem_accept_e, mem_date_sub, mem_date_last, mem_authcode
	
	private String mem_id;
	private String mem_name;
	private String mem_pw;
	private String mem_email;
	private String mem_phone;
	private String mem_nick;
	private String mem_accept_e; // 메일수신여부
	private Date mem_date_sub; // 등록날짜
	private Date mem_date_last; // 최신 로그인 시간.
	private String mem_authcode; // 인증
}

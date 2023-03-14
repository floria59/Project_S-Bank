package com.sbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbank.mapper.MemberMapper;
import com.sbank.domain.MemberVO;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;
	
	@Override
	public String idCheck(String mem_id) {
		// TODO Auto-generated method stub
		return memberMapper.idCheck(mem_id);
	}

	@Override
	public void join(MemberVO vo) {
		// TODO Auto-generated method stub
		memberMapper.join(vo);
	}

	@Override
	public MemberVO login_ok(String mem_id) {
		// TODO Auto-generated method stub
		return memberMapper.login_ok(mem_id);
	}

	@Override
	public void loginTimeUpdate(String mem_id) {
		// TODO Auto-generated method stub
		memberMapper.loginTimeUpdate(mem_id);
	}

}

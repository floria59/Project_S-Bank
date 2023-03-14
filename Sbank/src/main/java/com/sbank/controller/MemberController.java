package com.sbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sbank.service.EmailService;
import com.sbank.service.MemberService;
import com.sbank.domain.MemberVO;
import com.sbank.dto.LoginDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/member/*")
@Controller
public class MemberController {
	
	@Setter(onMethod_ = {@Autowired})
	private MemberService memberService;
	
	@Setter(onMethod_ = {@Autowired})
	private PasswordEncoder passwordEncoder;
	
	// 이메일 작업 주입작업
	@Setter(onMethod_ = {@Autowired})
	private EmailService emailService;
	
	// 로그인폼
	@GetMapping("/home")
	public void login() {
		log.info("로그인 폼");
	}
	
	// 회원가입 폼
	@GetMapping("/join")
	public void join() {
		log.info("회원가입폼");
	}
		
	// 회원정보 저장
	@PostMapping("/join")
	public String join(MemberVO vo, RedirectAttributes rttr) {
			
		String cryptEncoderPw = passwordEncoder.encode(vo.getMem_pw());
			
		vo.setMem_pw(cryptEncoderPw);
			
		if(vo.getMem_accept_e() != null && vo.getMem_accept_e().equals("on")) {
			vo.setMem_accept_e("Y");
		}else {
			vo.setMem_accept_e("N");
		}
			
		memberService.join(vo);
			
			return "redirect:/member/login";

	  }
		
	// 아이디 중복체크 
	@ResponseBody 
	@GetMapping("/idCheck")
	public ResponseEntity<String> idCheck(@RequestParam("mem_id") String mem_id){
		ResponseEntity<String> entity = null;
			
		String isUseID = "";
		if(memberService.idCheck(mem_id) != null) {
			isUseID = "no"; // 아이디가 사용중이다. 중복아이디
		}else {
			isUseID = "yes"; // 아이디 사용이 가능하다.
		}
			
		entity = new ResponseEntity<String>(isUseID, HttpStatus.OK);
			
		return entity;
			
	}
		

	// 로그인 인증하기
	@PostMapping("/loginPost")
	public String loginPost(LoginDTO dto, HttpSession session, RedirectAttributes rttr) {
		
		MemberVO vo = memberService.login_ok(dto.getMem_id());
			
		String url = "";
		String msg = "";
			
		if(vo != null) { // 아이디 일치시
			String passwd = dto.getMem_pw(); // 사용자가 입력한 비번
			String db_passwd = vo.getMem_pw(); // db에서 가져온 암호화된 비번 / 회원가입시 사용자가 입력한 비번이 암호화된것임
				
			if(passwordEncoder.matches(passwd, db_passwd)) { // 비번 일치시
					
				//로그인 시간 업데이트
				memberService.loginTimeUpdate(dto.getMem_id());
				session.setAttribute("loginStatus", vo);
					
				String dest = (String) session.getAttribute("dest");
				url = (dest != null) ? dest : "/";
				msg = "로그인이 되었습니다.";
					
			}else { // 비번 불일치시
				url = "/member/login";
				msg = "비밀번호가 일치하지 않습니다.";
				}
			}else { // 아이디 불일치시
				url = "/member/login";
				msg = "아이디가 일치하지 않습니다.";
			}
			
			rttr.addFlashAttribute("msg", msg);
			
			return "redirect:" + url;
		}
		
		// 로그아웃
		@GetMapping("/logout")
		public String logout(HttpSession session, RedirectAttributes rttr) {
			
			session.invalidate(); // 세션소멸
			rttr.addFlashAttribute("msg", "감사합니다. 다음에 또 만나요!");
			
			return "redirect:/";
		}

}

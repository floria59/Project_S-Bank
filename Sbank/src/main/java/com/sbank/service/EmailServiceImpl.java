package com.sbank.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.sbank.dto.EmailDTO;

import lombok.Setter;

@Service
public class EmailServiceImpl implements EmailService {

	@Setter(onMethod_ = {@Autowired})
	private JavaMailSender mailSender; 
	
	@Override
	public void sendMail(EmailDTO dto, String message) {
		//메일구성정보를 담당하는 객체(받는사람, 보내는 사람, 전자우편주소, 본문내용)
		MimeMessage msg = mailSender.createMimeMessage();
				
			try {
			// 1. 받는사람 메일주소
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiverMail()));
					
			// 2. 보내는 사람(메일, 이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress(dto.getSenderMail(), dto.getSenderName())});
					
			// 3. 메일제목
			msg.setSubject(dto.getSubject(), "utf-8");
					
			// 4. 본문내용
			msg.setText(message, "utf-8");
					
			mailSender.send(msg);  // GMail SMTP서버를 이용하여, 메일 발송이 된다.
			}catch(Exception ex) {
				ex.printStackTrace();
			}
				
	}

}

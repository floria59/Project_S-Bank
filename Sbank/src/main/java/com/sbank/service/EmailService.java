package com.sbank.service;

import com.sbank.dto.EmailDTO;

public interface EmailService {
	
	void sendMail(EmailDTO dto, String message);

}

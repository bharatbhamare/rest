package com.chat.ChatServices.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chat.ChatServices.models.ClientMassages;

@Service
public interface MessageService {

	//public List<ClientMassages> getMessage(String Clientname);
	public List<ClientMassages> getAllMessages();
}

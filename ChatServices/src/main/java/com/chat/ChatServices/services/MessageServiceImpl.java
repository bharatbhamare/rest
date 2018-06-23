package com.chat.ChatServices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chat.ChatServices.models.ClientMassages;
import com.chat.ChatServices.repository.MessageRepository;

@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	MessageRepository messageRepo;
	
	/*@Override
	public List<ClientMassages> getMessage(String Clientname) {
		
		return null;
	}*/

	@Override
	public List<ClientMassages> getAllMessages() {
		
		return (List<ClientMassages>)messageRepo.findAll();
	}

}

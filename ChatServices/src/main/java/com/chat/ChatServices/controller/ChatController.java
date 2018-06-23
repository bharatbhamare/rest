package com.chat.ChatServices.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.chat.ChatServices.models.ClientMassages;
import com.chat.ChatServices.models.Clients;
import com.chat.ChatServices.services.ClientService;
import com.chat.ChatServices.services.MessageService;



@RestController
public class ChatController {

	@Autowired
	ClientService clints;
	
	@Autowired
	MessageService messages;
	
	@GetMapping("/chat/clients")
	public ResponseEntity<List<Clients>>  getAllClients()
	{
		return new ResponseEntity<List<Clients>>( clints.getallClients(), HttpStatus.OK);
	}
	
	@GetMapping("/chat/messages")
	public ResponseEntity<List<ClientMassages>> getAllMessages()
	{
		return new ResponseEntity<List<ClientMassages>>(messages.getAllMessages(), HttpStatus.OK);
	}
	
}

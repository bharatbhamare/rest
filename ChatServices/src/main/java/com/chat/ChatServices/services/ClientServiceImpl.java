package com.chat.ChatServices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chat.ChatServices.models.Clients;
import com.chat.ChatServices.repository.ClientRepository;

@Service
public class ClientServiceImpl  implements ClientService{

	@Autowired
	ClientRepository clientRepo;
	
	/*@Override
	public Clients getClient(String sessionId) {
		
		return (Clients)clientRepo.findBysessionId(sessionId);
	}*/

	@Override
	public List<Clients> getallClients() {
		
		return (List<Clients>)clientRepo.findAll();
	}

}

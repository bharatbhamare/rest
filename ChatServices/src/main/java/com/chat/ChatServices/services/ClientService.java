package com.chat.ChatServices.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.chat.ChatServices.models.Clients;

@Service
public interface ClientService {

	//public Clients getClient(String sessionId );
	public List<Clients> getallClients();
}

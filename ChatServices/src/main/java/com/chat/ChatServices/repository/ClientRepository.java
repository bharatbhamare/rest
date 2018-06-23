package com.chat.ChatServices.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chat.ChatServices.models.Clients;

@Repository
public interface ClientRepository extends CrudRepository<Clients, Integer>{
	//public Clients findBysessionId(String sessionId);
}

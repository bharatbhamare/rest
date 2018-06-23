package com.chat.ChatServices.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chat.ChatServices.models.ClientMassages;

@Repository
public interface MessageRepository extends CrudRepository<ClientMassages, Integer>{

}

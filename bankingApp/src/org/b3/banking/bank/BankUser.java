package org.b3.banking.bank;

import org.b3.banking.dto.BankInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class BankUser {

	public static void main(String[] args) {
		BankInfo bankInfo= new BankInfo();
		bankInfo.setUid(1);
		bankInfo.setFname("bharat");
		bankInfo.setLname("bhamare");
		bankInfo.setEmail("b3.aug95@gmail.com");
		bankInfo.setMob("7709376040");
		bankInfo.setAdhar("142534253635");
		bankInfo.setBal("500");
		bankInfo.setPass("12345");
		bankInfo.setPin("1111");
		
		SessionFactory sessionfactoty= new Configuration().configure().buildSessionFactory();
		Session session=sessionfactoty.openSession();
		session.beginTransaction();
		session.save(bankInfo);
		session.getTransaction().commit();
	}

}

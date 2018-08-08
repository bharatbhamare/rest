package org.b3.banking.bank;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.b3.banking.dto.BankInfo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 * Servlet implementation class BankUserInfo1
 */
public class BankUserInfo1 extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String mob=request.getParameter("mob");
		String aadhar=request.getParameter("aadhar");
		String pass=request.getParameter("pass");
		String repass=request.getParameter("repass");
		
		char[] chars = "1234567890".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 4; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		String pin = sb.toString();
		System.out.println(pin);

		
		BankInfo bankInfo= new BankInfo();
		
		bankInfo.setFname(uname);
		bankInfo.setLname(lname);
		bankInfo.setEmail(email);
		bankInfo.setMob(mob);
		bankInfo.setAdhar(aadhar);
		bankInfo.setBal("500");
		bankInfo.setPass(pass);
		bankInfo.setPin(pin);
		try {
			
			
		SessionFactory sessionfactoty= new Configuration().configure().buildSessionFactory();
		Session session=sessionfactoty.openSession();
		Criteria criteria= session.createCriteria(BankInfo.class);
		criteria.add(Restrictions.eq("email", email));
		BankInfo useracc=(BankInfo)criteria.uniqueResult();
		if(useracc!=null)
		{
			request.setAttribute("alert", "Can't create account user is present");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}else {
		
		session.beginTransaction();
		session.save(bankInfo);
		session.getTransaction().commit();
		request.setAttribute("alert", "Account Sucsessfully Created..");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		}catch(Exception e)
		{
			request.setAttribute("alert", "Can't create Account please try again");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
			e.printStackTrace();
		}
		}

}

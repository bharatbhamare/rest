package org.b3.banking.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.b3.banking.dto.BankInfo;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String email=request.getParameter("email");
String pass=request.getParameter("pass");
BankInfo user= new BankInfo();
HttpSession ses=request.getSession();
try
{
SessionFactory sessionfactory= new Configuration().configure().buildSessionFactory();
	Session session= sessionfactory.openSession();
	//user=(BankInfo)session.get(BankInfo.class, pass);
	Criteria criteria =session.createCriteria(BankInfo.class);
	criteria.add(Restrictions.eq("email", email));
	criteria.add(Restrictions.eq("pass", pass));
	user=(BankInfo)criteria.uniqueResult();
	if(user==null)
	{
		request.setAttribute("alert", "user not found");
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
	
			
	}else
	{
		ses.setAttribute("email",email);
	ses.setAttribute("pass",pass);
		ses.setAttribute("user", user.getFname()+" "+user.getLname());
		request.getRequestDispatcher("my_account.jsp").forward(request, response);
		
	}
	
	System.out.println("user name: "+user.getFname());
	System.out.println("user email: "+user.getEmail());
	System.out.println("user mob: "+user.getMob());
	System.out.println("user pass: "+user.getPass());
	System.out.println("user aadhar: "+user.getAdhar());

	
}catch (Exception e) {
	request.setAttribute("alert", "Please try Again latter");
	request.getRequestDispatcher("login.jsp").forward(request, response);
	

}		
	}

}

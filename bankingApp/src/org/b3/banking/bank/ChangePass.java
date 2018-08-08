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
 * Servlet implementation class ChangePass
 */
public class ChangePass extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	try {
		
		SessionFactory sessionfactory= new Configuration().configure().buildSessionFactory();
		Session session =sessionfactory.openSession();
		Criteria criteria= session.createCriteria(BankInfo.class);
		criteria.add(Restrictions.eq("email", email));
		BankInfo user=(BankInfo)criteria.uniqueResult();
		if(user==null)
		{
			
			request.setAttribute("msg","Email id not Found");
			request.getRequestDispatcher("my_account.jsp").forward(request, response);
			
		}else {
			session.beginTransaction();
			user.setPass(pass);
			session.save(user);
			session.getTransaction().commit();
			HttpSession ss= request.getSession();
			ss.setAttribute("email",user.getEmail());
			ss.removeAttribute("pass");
			ss.setAttribute("pass",pass);
		
			request.setAttribute("msg","Password Changed");
			request.getRequestDispatcher("my_account.jsp").forward(request, response);
			
		}
		
	}catch (Exception e) {

		request.setAttribute("msg","Please try Again latter");
		request.getRequestDispatcher("my_account.jsp").forward(request, response);
		
		e.printStackTrace();
	}
	
	
	
	}

}

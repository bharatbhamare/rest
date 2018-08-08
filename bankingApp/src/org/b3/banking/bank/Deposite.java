package org.b3.banking.bank;

import java.io.IOException;
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
 * Servlet implementation class Deposite
 */
public class Deposite extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pin=request.getParameter("pin");
		String amt=request.getParameter("amt");
		try
		{
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(BankInfo.class);
		criteria.add(Restrictions.eq("pin", pin));
		BankInfo user=(BankInfo)criteria.uniqueResult();
		if(user==null)
		{
			
			request.setAttribute("msg","Amount not deposited please try again latter");
			request.getRequestDispatcher("my_account.jsp").forward(request, response);
			
		}else
		{
		
		float bal=Float.parseFloat(user.getBal());
		float deposit=bal+Float.parseFloat(amt);
		user.setBal(deposit+"");
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();

		request.setAttribute("email",user.getEmail());
		request.setAttribute("pass",user.getPass());
		request.setAttribute("msg","Amount deposited");
		request.getRequestDispatcher("my_account.jsp").forward(request, response);

		}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

}

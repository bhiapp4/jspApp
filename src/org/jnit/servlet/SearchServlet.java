package org.jnit.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jnit.dao.CustomerDao;
import org.jnit.domain.Customer;
//Request dispatcher
//include = includes a response from more than one servlet
//forward = forward a request from one servlet to another servlet
public class SearchServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerDao custDao = new CustomerDao();
		List<Customer>customers = custDao.fetchCustomersByCity(req.getParameter("city"));
		req.setAttribute("custList", customers);
		req.getRequestDispatcher("searchExpResults.jsp").forward(req, resp);
	}
}

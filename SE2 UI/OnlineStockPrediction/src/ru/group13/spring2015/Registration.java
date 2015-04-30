package ru.group13.spring2015;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet(name="UserRegistrationServlet", description = "User Registeration and Database Entry", urlPatterns = { "/UserRegistration" })
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//Get the User Information
		
		UserInformation userInfo = new UserInformation();
		
		userInfo.setFirstName(request.getParameter("firstName"));
		userInfo.setLastName(request.getParameter("lastName"));
		userInfo.setEmailAddress(request.getParameter("emailAddress"));
		userInfo.setPassword(request.getParameter("password"));
		userInfo.setCompany(request.getParameter("company"));
		userInfo.setPhone(request.getParameter("phone"));
		userInfo.setPosition(request.getParameter("position"));
		
		System.out.println(  userInfo.getEmailAddress() );
		
		//Send this information to db server using webservice (POST)
		// Wait for the response from the webservice.
		
		//respond back to the user based on the webservice response.
		response.sendRedirect("signin.jsp");
		
		
		
	}

}

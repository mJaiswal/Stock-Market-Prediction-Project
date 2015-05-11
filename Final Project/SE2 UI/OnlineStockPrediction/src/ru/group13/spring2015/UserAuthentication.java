package ru.group13.spring2015;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class UserMainPage
 */
@WebServlet(description = "From Login Page to User Dashboard", urlPatterns = { "/UserAuthenticateServlet" })
public class UserAuthentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAuthentication() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		
		//Get the user email and password 	
		String userEmail = request.getParameter("userEmail");
		
		//Post	the User Details from the Server ( web service )
		
		//If the Authentication is successfull.
			//Set a Session Variable for UserInfo
			
			UserInformation userInfo = new UserInformation();
			
			
			//String userEmail = request.getSession().getAttribute("userEmail");
			request.getSession().setAttribute("userName", userInfo.getFirstName()+" " +userInfo.getLastName() );
			
			//Redirect to the User Main Page
			response.sendRedirect("pages/UserMainPage.jsp?userEmail="+userEmail);
			
		
	}

}

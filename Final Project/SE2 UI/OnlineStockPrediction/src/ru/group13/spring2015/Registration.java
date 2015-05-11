package ru.group13.spring2015;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;







/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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
		
		UserInformation userInfo = new UserInformation();
		
		userInfo.setFirstName(request.getParameter("firstName"));
		userInfo.setLastName(request.getParameter("lastName"));
		userInfo.setEmailAddress(request.getParameter("emailAddress"));
		userInfo.setPassword(request.getParameter("password"));
		userInfo.setCompany(request.getParameter("company"));
		userInfo.setPhone(request.getParameter("phone"));
		userInfo.setPosition(request.getParameter("position"));

		
		

		
		JSONObject json = new JSONObject();
		
		try {
			json.put("firstName", userInfo.getFirstName() );
			json.put("lastName", userInfo.getLastName());
			json.put("emailAddress", userInfo.getEmailAddress() );
			json.put("password", userInfo.getPassword() );
			json.put("company", userInfo.getCompany() );
			json.put("position", userInfo.getPosition());
			json.put("phone", userInfo.getPhone());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		
		String url= WebServiceConnect.WebServiceUserRegisteration;

		URL object=new URL(url);

		HttpURLConnection con = (HttpURLConnection) object.openConnection();

		con.setDoOutput(true);

		con.setDoInput(true);

		con.setRequestProperty("Content-Type", "application/json");

		con.setRequestProperty("Accept", "application/json");

		con.setRequestMethod("POST");
		
		con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
	    
		OutputStreamWriter wr= new OutputStreamWriter(con.getOutputStream());
		
		wr.write(json.toString());


		
		
	}

}

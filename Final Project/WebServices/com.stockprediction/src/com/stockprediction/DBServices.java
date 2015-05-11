package com.stockprediction;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class DBServices {
	private  Connection conElement;
	private  Statement st = null;
	private  String url = "jdbc:postgresql://stockprediction.cwb7sxoupxyj.us-west-2.rds.amazonaws.com/stocks";  // This is the url pointing to the database name 
	private  String user = "rakesh"; 						   // Enter the user name or the owner name of the database
	private  String password = "se2project";	
	private  void createConnection() throws SQLException{
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conElement = DriverManager.getConnection(url, user, password);
		st = conElement.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
	}

	public BigDecimal getStockClosingPrice(String symbol, Date date) throws SQLException{
		createConnection();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		String query="select close_price from historical_data where symbol ='" + symbol + "' and date ='" + dateFormat.format(date)+ "'";
		ResultSet result=st.executeQuery(query);
		//need to handle for results having more than one row
		System.out.println(result);
		if(result.first()){	
		}
		return result.getBigDecimal(1);
		
	}
	
	public String getStockDecision(String symbol) throws SQLException
	{
		String query="select decision from stock_decisions where symbol ='" + symbol + "'";
		ResultSet result=st.executeQuery(query);
		//need to handle for results having more than one row
		System.out.println(result);
		if(result.first()){	
		}
		return result.getString(1);
	}
	
	
	
	


}

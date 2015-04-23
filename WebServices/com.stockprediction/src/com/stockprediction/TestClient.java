package com.stockprediction;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestClient {

	
	public static void main(String[] args) throws SQLException, ParseException {
		// TODO Auto-generated method stub
		DBServices dbs=new DBServices();
		
		String dateString = "2015-02-26";
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(dateString);
		System.out.println(dbs.getStockClosingPrice("GOOG", date));
	}

}

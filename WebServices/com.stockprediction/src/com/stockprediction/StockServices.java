package com.stockprediction;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import org.json.JSONException;
import org.json.JSONObject;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Path("/services")
public class StockServices {

	
	/*public String sayHtmlHello() {
		return "<html> " + "<title>" + "Hello Jersey" + "</title>"
				+ "<body><h1>" + "Hello Jersey" + "</body></h1>" + "</html> ";
	}

	//@Path("/stockservices")
	@GET
	@Produces(MediaType.TEXT_PLAIN)*/
	
	@Path("/clossingprice")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String getStockPrice(
			@QueryParam("symbol") String symbol,
			@QueryParam("date") String dateString) throws ParseException, SQLException, JSONException{
		DBServices dbs=new DBServices();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		date = format.parse(dateString);
		BigDecimal close_price = dbs.getStockClosingPrice(symbol, date);
		JSONObject obj=new JSONObject();
		obj.put("value",close_price.toString());
		return obj.toString();
	}
	
	@Path("/purdecision")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String getStockDecession(
			@QueryParam("symbol") String symbol) throws SQLException, JSONException{
		DBServices dbs=new DBServices();
		String decission = dbs.getStockDecision(symbol);
		JSONObject obj=new JSONObject();
		obj.put("decision",decission);
		return decission;
	}
}

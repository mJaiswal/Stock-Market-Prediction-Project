import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
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

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import yahoofinance.Stock;
import yahoofinance.YahooFinance;
import yahoofinance.histquotes.HistoricalQuote;
import yahoofinance.histquotes.Interval;

public class StockPricesYQL extends TimerTask{
	
	static Statement st = null;
	static String url = "jdbc:postgresql://localhost/stocks";  // This is the url pointing to the database name 
	static String user = "postgres"; 						   // Enter the user name or the owner name of the database
	static String password = "P@ssw0rd";					   // Enter the password or the owner name of the database
	
	public static StockPricesYQL sp = null ;
	public static StockPricesYQL getInstance() {
		if(sp == null) {
			sp = new StockPricesYQL();
		}
		return sp;
	}

	private StockPricesYQL(){

	}
	public static void main(String[] args) throws InterruptedException, ParseException, SQLException  {

		StockPricesYQL s = new StockPricesYQL();
		s = StockPricesYQL.getInstance();

		java.sql.Connection con = null;
		ResultSet rs = null;

		Timer timer = new Timer();

		try {
			con = DriverManager.getConnection(url, user, password);
			st = con.createStatement();
			int i=0;
			//real time data retreval;
			Calendar from = Calendar.getInstance();
			Calendar to = Calendar.getInstance();
			from.add(Calendar.YEAR, -1); // from 1 year ago
			
			
			//Uncomment for historical
			/*try {
				insertIntoDBHist("YHOO");
				insertIntoDBHist("GOOG");
				insertIntoDBHist("INTC");
				insertIntoDBHist("TSLA");
				insertIntoDBHist("AAPL");
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			
			
			//Uncomment for real time data
			timer.scheduleAtFixedRate(s, 2000, 30000);
		} catch (SQLException ex) {

			System.out.println("Exception" + ex);

		} finally {
			if (st != null) {
				st.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}

	public static void insertIntoDBHist(String symbol) throws ParseException, SQLException, MalformedURLException{
		
		HttpURLConnection conn = null;
		JSONObject jsonObject=null;
		java.sql.Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
			st = con.createStatement();

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		try {
			//Sample query to extract data for BestBuy (BBY) from Feb 1,2014 to March 2nd 2015
			URL yqlUrl = new URL("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.historicaldata%20where%20symbol%20%3D%20%22"+symbol+"%22%20and%20startDate%20%3D%20%222014-02-01%22%20and%20endDate%20%3D%20%222015-03-01%22&format=json&env=http%3A%2F%2Fdatatables.org%2Falltables.env&callback=");
			conn = (HttpURLConnection) yqlUrl.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
			StringBuilder sb = new StringBuilder();
			String inputStr;
			//Read response to StringBuilder object
			while ((inputStr = br.readLine()) != null)
				sb.append(inputStr);

			//Convert the String to JSON object
			jsonObject = new JSONObject(sb.toString());
		} catch(MalformedURLException e){
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			conn.disconnect();
		}	
		
		
		try{
			//Get quotes array from the response
			JSONArray quotes = jsonObject.getJSONObject("query").getJSONObject("results").optJSONArray("quote");
			
			for (int i=0;i<quotes.length();i++) {
				JSONObject quote=(JSONObject) quotes.get(i);
				//query to insert into database
				
				String sql1 = "INSERT INTO historical_data(symbol,date,open_price,close_price,high_price,low_price,volume,adj_close_price) VALUES ('"+quote.getString("Symbol")+"','"+quote.getString("Date")+"',"+quote.getDouble("Open")+","+quote.getDouble("Close")+","+quote.getDouble("High")+","+quote.getDouble("Low")+","+quote.getLong("Volume")+","+ quote.getDouble("Adj_Close") +")";
				System.out.println(sql1);
				st.executeUpdate(sql1);
			}
		}catch(SQLException se){
			se.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}finally{
			//Close connections
			try {
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		java.sql.Connection con = null;

		try {
			con = DriverManager.getConnection(url, user, password);
			st = con.createStatement();

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		URL yqlUrl;
		HttpURLConnection conn = null;
		JSONObject jsonObject=null;
		try {
			
			yqlUrl = new URL("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22YHOO%22%2C%22TSLA%22%2C%22GOOG%22%2C%22AAPL%22%2C%22INTC%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=");
			conn = (HttpURLConnection) yqlUrl.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-Type", "application/json");
			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
			StringBuilder sb = new StringBuilder();
			String inputStr;
			//Read response to StringBuilder object
			while ((inputStr = br.readLine()) != null)
				sb.append(inputStr);
			
			//Convert the String to JSON object
			jsonObject = new JSONObject(sb.toString());
		} catch(MalformedURLException e){
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			conn.disconnect();
		}
		
		//ExtractData hdata=new ExtractData();
		//JSONObject jsonObject=null;
		
		//jsonObject=hdata.collectData();
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		DateFormat dateFormat1 = new SimpleDateFormat("HH:mm:ss");
		Date time = new Date();
		
		try {
			JSONArray quotes = jsonObject.getJSONObject("query").getJSONObject("results").optJSONArray("quote");
			for (int i=0;i<quotes.length();i++) {
				JSONObject quote=(JSONObject) quotes.get(i);
				String sql = "INSERT INTO real_time_data(symbol,date,time,price,volume) VALUES ('"+quote.getString("Symbol")+"','"+dateFormat.format(date)+"',"+"'"+dateFormat1.format(time)+"' ,"+quote.getDouble("LastTradePriceOnly")+","+quote.getLong("Volume")+")";				
				st.executeUpdate(sql);
				System.out.println("Sql is "+ sql);
			}
			System.out.println("Inserted");
		} catch (JSONException e) {
		} catch (SQLException e) {
		}


		try {
			st.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}





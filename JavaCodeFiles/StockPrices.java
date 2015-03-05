package com.postgresql;


import java.math.BigDecimal;
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

import yahoofinance.Stock;
import yahoofinance.YahooFinance;
import yahoofinance.histquotes.HistoricalQuote;
import yahoofinance.histquotes.Interval;

/**
 * @author Saibhavya PappiReddy
 * Description: This java class inserts historic and real time data into the database 
 *
 */
public class StockPrices extends TimerTask{
	
	static Statement st = null;
	static String url = "jdbc:postgresql://localhost/stocks";  // This is the url pointing to the database name 
	static String user = "Saibhavya"; 						   // Enter the user name or the owner name of the database
	static String password = "se2pwd";					   // Enter the password or the owner name of the database
	
	public static StockPrices sp = null ;
	public static StockPrices getInstance() {
		if(sp == null) {
			sp = new StockPrices();
		}
		return sp;
	}

	private StockPrices(){

	}
	public static void main(String[] args) throws InterruptedException, ParseException, SQLException  {


		StockPrices s = new StockPrices();
		s = StockPrices.getInstance();

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

			String[] symbols = new String[] {"GOOG", "YHOO","INTC","AAPL", "TSLA"};
			Map<String, Stock> stocks = YahooFinance.get(symbols); // single request
			Stock google = stocks.get("GOOG");
			Stock yahoo = stocks.get("YHOO");
			Stock intel = stocks.get("INTC");
			Stock apple = stocks.get("AAPL");
			Stock tesla = stocks.get("TSLA");
			//Historical data collection
			List<HistoricalQuote> googleHistQuotes = google.getHistory(from, to, Interval.DAILY);
			List<HistoricalQuote> yahooHistQuotes = yahoo.getHistory(from, to, Interval.DAILY);
			List<HistoricalQuote> intelHistQuotes = intel.getHistory(from, to, Interval.DAILY);
			List<HistoricalQuote> appleHistQuotes = apple.getHistory(from, to, Interval.DAILY);
			List<HistoricalQuote> teslaHistQuotes = tesla.getHistory(from, to, Interval.DAILY);

			/* 
			 * This part of the code inserts data into the historic table
			 * insertIntoDBHist(googleHistQuotes,"GOOG");
        	insertIntoDBHist(googleHistQuotes,"YHOO");
        	insertIntoDBHist(googleHistQuotes,"INTC");
        	insertIntoDBHist(googleHistQuotes,"AAPL");
        	insertIntoDBHist(googleHistQuotes,"TSLA");

			 */

			timer.scheduleAtFixedRate(s, 2000, 10000);
			//   insertIntoDBReal(google, "GOOG");


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

	public static void insertIntoDBHist(List<HistoricalQuote> hq, String symbol) throws ParseException, SQLException{


		for( int index=0; index < hq.size(); index++){

			// open - close, high - low, date , volume, 1
			Calendar date =hq.get(index).getDate();



			date.add(Calendar.DATE, 1);
			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			System.out.println(date.getTime());

			String formatted = format1.format(date.getTime());
			System.out.println("Formatted date "+ formatted);
			// Output "2012-09-26"

			System.out.println(format1.parse(formatted));


			BigDecimal high=hq.get(index).getHigh();
			BigDecimal low=hq.get(index).getLow();
			Long volume=hq.get(index).getVolume();
			BigDecimal open=hq.get(index).getOpen();
			BigDecimal close=hq.get(index).getClose();
			BigDecimal adjClose=hq.get(index).getAdjClose();

			String sql1 = "INSERT INTO historical_data(symbol,date,open_price,close_price,high_price,low_price,volume,adj_close_price) VALUES ("+symbol+","+formatted+"',"+open+","+close+","+high+","+low+","+volume+")";
			st.executeUpdate(sql1);


		}
	}

	public static void insertIntoDBReal(Stock hq, String symbol) throws SQLException, InterruptedException {

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		DateFormat dateFormat1 = new SimpleDateFormat("HH:mm:ss");
		Date time = new Date();

		Long volume=hq.getQuote().getVolume();
		BigDecimal price=hq.getQuote().getPrice();
		String sql1 = "INSERT INTO real_time_data(symbol,date,time,price,volume) VALUES ('"+symbol+"','"+dateFormat.format(date)+"',"+"'"+dateFormat1.format(time)+"' ,"+price+","+volume+")";
		System.out.println("Sql1 is "+ sql1);
		st.executeUpdate(sql1);

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

		String[] symbols = new String[] {"GOOG", "YHOO","INTC","AAPL", "TSLA"};
		Map<String, Stock> stocks = YahooFinance.get(symbols); // single request
		Stock google = stocks.get("GOOG");
		Stock yahoo = stocks.get("YHOO");
		Stock intel = stocks.get("INTC");
		Stock apple = stocks.get("AAPL");
		Stock tesla = stocks.get("TSLA");
		try {
			insertIntoDBReal(google, "GOOG");
			insertIntoDBReal(yahoo, "YHOO");
			insertIntoDBReal(intel, "INTC");
			insertIntoDBReal(apple, "AAPL");
			insertIntoDBReal(tesla, "TSLA");


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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





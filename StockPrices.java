package stockprices;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

import yahoofinance.Stock;
import yahoofinance.YahooFinance;
import yahoofinance.histquotes.HistoricalQuote;
import yahoofinance.histquotes.Interval;


public class StockPrices {

	public static void main(String[] args) throws InterruptedException  {

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
		
		
		//Realtime data collection for every 100 ms
		while(true){
			System.out.println("GOOLE "+google.getQuote().getPrice());
			System.out.println("YAHOO "+yahoo.getQuote().getPrice());
			System.out.println("INTEL "+intel.getQuote().getPrice());
			System.out.println("APPLE "+apple.getQuote().getPrice());
			System.out.println("TESLA "+tesla.getQuote().getPrice());
			Thread.sleep(100);
		}


	}

}

/*
 written by: Milin Jaiswal
 debugged by: Milin Jaiswal
*/


package ru.group13.spring2015;

public class WebServiceConnect {

	
	public final static String WebServiceBaseUrl = "http://29ca5884.ngrok.io/";
	
	public final static String WebServiceRealtimeStockData = WebServiceBaseUrl + "com.stockprediction/rest/services/realtimedata?symbol=";
	
	
	public final static String WebServiceSingleStockDetails = 	WebServiceBaseUrl + 
																"com.stockprediction/rest/services/stockdetails?symbol=";
	
	public final static String WebServiceHistoricalStockData = WebServiceBaseUrl +
														"com.stockprediction/rest/services/historicaldata?symbol=";
	
	public final static String WebServiceListOfOtherStocks = WebServiceBaseUrl + "com.stockprediction/rest/services/listavglowthan?symbol=";
	
	public final static String WebServiceShortTermPrediction = WebServiceBaseUrl+"com.stockprediction/rest/services/shortterm?symbol=";
	
	public final static String WebServiceLongTermPrediction = WebServiceBaseUrl+"com.stockprediction/rest/services/longterm?symbol=";
	
	public final static String WebServiceUserRegisteration = WebServiceBaseUrl+"com.stockprediction/rest/services/userregistration";
	
	public final static String WebServiceLongUserAuthentication = WebServiceBaseUrl+"com.stockprediction/rest/services/userlogin";
	
	public final static String WebServiceUserDetails = WebServiceBaseUrl+"com.stockprediction/rest/services/getuserdetails?useremail=";
	
	public final static String WebServiceAllStocks = WebServiceBaseUrl+"com.stockprediction/rest/services/list";

}

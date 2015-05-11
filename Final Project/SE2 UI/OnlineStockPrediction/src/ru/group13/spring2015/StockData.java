/**
 * 
 */
package ru.group13.spring2015;

import java.util.Date;

/**
 * @author Milin
 *
 */
public class StockData {
	
	private String Symbol;
	private String Name;
	private Date  Date;
	private double Open;
	private double High ;
	private double Low;
	private double Close;
	private double Volume;
	private double AdjClose;
	
	
	public String getSymbol() {
		return Symbol;
	}
	public void setSymbol(String symbol) {
		Symbol = symbol;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public double getOpen() {
		return Open;
	}
	public void setOpen(double open) {
		Open = open;
	}
	public double getHigh() {
		return High;
	}
	public void setHigh(double high) {
		High = high;
	}
	public double getLow() {
		return Low;
	}
	public void setLow(double low) {
		Low = low;
	}
	public double getClose() {
		return Close;
	}
	public void setClose(double close) {
		Close = close;
	}
	public double getVolume() {
		return Volume;
	}
	public void setVolume(double volume) {
		Volume = volume;
	}
	public double getAdjClose() {
		return AdjClose;
	}
	public void setAdjClose(double adjClose) {
		AdjClose = adjClose;
	}

}

package ru.group13.spring2015;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 */

/**
 * @author Milin
 *
 */
public class DatabaseConnect {

	public Statement dbSqlStatement;
	private java.sql.Connection dbConn ;
	private final static String url = "jdbc:postgresql://localhost/postgres";  // This is the url pointing to the database name 
	private final static String user = "postgres";						   // Enter the user name or the owner name of the database
	private final static String password = "oracle";				   // Enter the password or the owner name of the database
	
	
	public DatabaseConnect() {
		// TODO Auto-generated constructor stub
		dbConn = null;
		dbSqlStatement = null;
	}
	public Statement openConnection()
	{
		try {
			//Open Connection to Database and add the new User Details
			dbConn = DriverManager.getConnection(url, user, password);
			dbSqlStatement = dbConn.createStatement();
					
		}
		catch ( SQLException e){ 
			e.printStackTrace();
		}
		
		return dbSqlStatement;
		
		
	}
	
	public void closeConection()
	{
		if (dbConn != null) {
			try {
				dbConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (dbSqlStatement != null) {
			try {
				dbSqlStatement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}

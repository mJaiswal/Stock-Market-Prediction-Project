/*
*  How to run the code.
*/

- StockPrices.java is main() file

- Please make sure you provide the correct url, user, password (member variables)  for the postgreSQL on your machine in the StockPrices.java file. 
- THe java program should be run by passing arguments
<argument> can be either - hist : for historical data processing  
							OR 
						   real : for real-time data processing ( default 10 seconds) - you can chance this value in the timer-schedule in the StockPrices.java file


- To run using eclipse , click Run-> Run Configurations -> Arguments Tab -> type the arguments. Then click Apply. Then click Run.

- To run using command line 
	1. javac StockPrices.java
	2. java  StockPrices <argument>
		e.g. java StockPrices hist
		e.g. java StockPrices real
		
*******************		IMPORTANT NOTE		***********************
Please remember that if running the java program as real-time , you should kill(linux)/End-Task(windows) the program from the Background Services.
Otherwise it will keep running and filling the database. 
In Linux u can use kill command or Task Manager ( if available in your linux flavour)
In windows u can use Task Manager and end-task javaw.exe).
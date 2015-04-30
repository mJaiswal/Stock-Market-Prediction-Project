<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	
 %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>More Statistics</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse ">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Welcome <%=session.getAttribute("userName")%> </a>
	    </div>
	    <div>

	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#">Home</a></li>
	        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Stocks <span class="caret"></span></a>
	          <ul class="dropdown-menu">

	            <li>
                     <a id="AAPL" href="StockInfo.jsp?symbol=AAPL"> <img src="stockicons/apple.png" height="30" width="30"/> Apple</a>
                 </li>
                 
                 <li>
                     <a id="GOOG" href="StockInfo.jsp?symbol=GOOG"><img src="stockicons/google.png" height="30" width="30"/> Google</a>
                 </li>
                 <li>
                     <a id="YHOO" href="StockInfo.jsp?symbol=YHOO"><img src="stockicons/yahoo.png" height="30" width="30"/> Yahoo</a>
                 </li>
                 <li>
                     <a id="MSFT" href="StockInfo.jsp?symbol=MSFT"> <img src="stockicons/micosoft.png" height="30" width="30"/> Microsoft</a>
                 </li>
                 <li>
                     <a id="INTC" href="StockInfo.jsp?symbol=INTC"><img src="stockicons/intel.png" height="30" width="30"/> Intel</a>
                 </li>
                 <li>
                     <a id ="TSLA" href="StockInfo.jsp?symbol=TSLA"><img src="stockicons/tesla.png" height="30" width="30"/> Tesla</a>
                 </li>
                 <li>
                     <a id="CSCO" href="StockInfo.jsp?symbol=CSCO"><img src="stockicons/cisco.png" height="30" width="30"/> Cisco</a>
                 </li>
                 <li>
                     <a id="BAC" href="StockInfo.jsp?symbol=BAC"><img src="stockicons/bankofamerica.png" height="30" width="30"/> Bank of America</a>
                 </li>
                 <li>
                     <a id="WMT" href="StockInfo.jsp?symbol=WMT"><img src="stockicons/walmart.png" height="30" width="30"/> Walmart</a>
                 </li>
                 <li>
                     <a id ="JNPR" href="StockInfo.jsp?symbol=JNPR"><img src="stockicons/junipernetworks.png" height="30" width="30"/> Juniper Networks</a>
                 </li>

	          </ul>
	        </li>
	        <li><a href="MoreStatistics.jsp">More Statistics</a></li>
	        
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-user"></span> My Profile</a></li>
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	

</body>
</html>
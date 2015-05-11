
<%@page import="ru.group13.spring2015.*"%>
<%@ page import="java.util.*" %>

<%

/*
 written by: Milin Jaiswal
 assisted by: Vidur Nyyar
 debugged by: Milin Jaiswal
*/
	String StockSymbol = "";
	String StockName ="" ;
	String imagePath = "./stockicons/default.png";
	StockSymbol = request.getParameter("symbol");

	//String webServiceURL_stockDetails = "http://443d6043.ngrok.io/com.stockprediction/rest/services/stockdetails?symbol=";
	
	//Get the Stock Details from the webservice 

	//Set the correct image for stock icon
	if(StockSymbol != null)
	{
		if(StockSymbol.equalsIgnoreCase("AAPL"))
		{
			imagePath = "./stockicons/apple.png";
			StockName = "Apple Inc.";
			
		}
		else if(StockSymbol.equalsIgnoreCase("GOOG"))
		{
			imagePath = "./stockicons/google.png";
			StockName = "Google Inc.";
			
		}
		else if(StockSymbol.equalsIgnoreCase("INTC"))
		{
			imagePath = "./stockicons/intel.png";
			StockName = "Intel Corp.";
		}
		else if(StockSymbol.equalsIgnoreCase("YHOO"))
		{
			imagePath = "./stockicons/yahoo.png";
			StockName = "Yahoo Inc.";
		}
		else if(StockSymbol.equalsIgnoreCase("TSLA"))
		{
			imagePath = "./stockicons/tesla.png";
			StockName = "Tesla Motors, Inc.";
		}
		else if(StockSymbol.equalsIgnoreCase("WMT"))
		{
			imagePath = "./stockicons/walmart.png";
			StockName = "Wal-Mart Stores, Inc.";
		}
		else if(StockSymbol.equalsIgnoreCase("CSCO"))
		{
			imagePath = "./stockicons/cisco.png";
			StockName = "Cisco Systems, Inc.";
		}
		else if(StockSymbol.equalsIgnoreCase("MSFT"))
		{
			imagePath = "./stockicons/microsoft.png";
			StockName = "Microsoft Corp.";
		}
		else if(StockSymbol.equalsIgnoreCase("BAC"))
		{
			imagePath = "./stockicons/bankofamerica.png";
			StockName = "Bank of America Corp.";
		}
		else if(StockSymbol.equalsIgnoreCase("JNPR"))
		{
			imagePath = "./stockicons/junipernetworks.png";
			StockName = "Juniper Networks, Inc.";
		}
	
		
		//System.out.println("StockSymbol is " + StockSymbol + " imagePath is " + imagePath);

		
		
		
		
		
	}	
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stock Details - <%=StockName%> </title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    
    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<link id="bsdp-css" href="../bootstrap-datepicker-1.4.0/css/bootstrap-datepicker3.css" rel="stylesheet">
	
	<style type="text/css">
	.Stockcenter h1 {display: inline;}​
	
	.center {display: inline;}
	
	</style>
	
	<script type="text/javascript">    
   	
		
		    
		 
      
    	
    
    	

 
    </script>




</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <!-- Navigation -->
        
        <!-- Nav Header -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                 <a class="navbar-brand">Welcome <% //session.getAttribute("userName").toString()%> !</a>
            </div>
        <!-- / Nav header -->

		<!-- Top Nav Bar -->
            <ul class="nav navbar-top-links navbar-right">
            	<li class="currentDate"></li>
            	            	
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="UserMainPage.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="signin.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        <!-- /Top Nav Bar  -->
            
		<!-- Side Nav bar -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    
                    <li>
                    </li>
                    
                    <li>
                         <a href="#"><i class="fa fa-sitemap fa-fw"></i> Stocks <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                 <a id="AAPL" href="StockInfo.jsp?symbol=AAPL"> <img src="./stockicons/apple.png" height="40" width="40"/> Apple</a>
                             </li>
                             <li>
                                 <a id="GOOG" href="StockInfo.jsp?symbol=GOOG"><img src="./stockicons/google.png" height="40" width="40"/> Google</a>
                             </li>
                             <li>
                                 <a id="YHOO" href="StockInfo.jsp?symbol=YHOO"><img src="./stockicons/yahoo.png" height="40" width="40"/> Yahoo</a>
                             </li>
                             <li>
                                 <a id="MSFT" href="StockInfo.jsp?symbol=MSFT"> <img src="./stockicons/microsoft.png" height="40" width="40"/> Microsoft</a>
                             </li>
                             <li>
                                 <a id="INTC" href="StockInfo.jsp?symbol=INTC"><img src="./stockicons/intel.png" height="40" width="40"/> Intel</a>
                             </li>
                             <li>
                                 <a id ="TSLA" href="StockInfo.jsp?symbol=TSLA"><img src="./stockicons/tesla.png" height="40" width="40"/> Tesla</a>
                             </li>
                             <li>
                                 <a id="CSCO" href="StockInfo.jsp?symbol=CSCO"><img src="./stockicons/cisco.png" height="40" width="40"/> Cisco</a>
                             </li>
                             <li>
                                 <a id="BAC" href="StockInfo.jsp?symbol=BAC"><img src="./stockicons/bankofamerica.png" height="40" width="40"/> Bank of America</a>
                             </li>
                             <li>
                                 <a id="WMT" href="StockInfo.jsp?symbol=WMT"><img src="./stockicons/walmart.png" height="40" width="40"/> Walmart</a>
                             </li>
                             <li>
                                 <a id ="JNPR" href="StockInfo.jsp?symbol=JNPR"><img src="./stockicons/junipernetworks.png" height="40" width="40"/> Juniper Networks</a>
                             </li>
                             
                             
                         </ul>
                         <!-- /.nav-second-level -->
                     </li>
                       <li>
                         <a href="GoogleTrends.jsp"><i class="fa fa-th"></i> Google Trends</a>
                        </li>
                         <li>
                         <a href="stocks.jsp"><i class="fa fa-th"></i> All Stocks</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side --> <!-- Side Nav bar -->
        </nav>
       
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row" >
                    <div class="col-lg-12">
                    	
	                    <div class="page-header" >
		                    <div class="center">
						            <h1>
						                <img src="<%=imagePath%>"  width="100" height="100" >
		                    			<span id="stockName"> <%=StockName%> </span> 
		                    			<span id="stockSymbol" style="color:teal; ; font-size:medium; ; font-style:italic; ">(NASDAQ : <%=StockSymbol%>)</span> 
		                    			
						            </h1>
						            
						     </div>
		                   
	                    </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-12">
                      
                      <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#StockInformation" data-toggle="tab" onclick="onclickStockInfo()"><h4>Stock Information</h4></a>
                                </li>
                                <li><a href="#historicaldata" data-toggle="tab"><h4>Historical Information</h4></a>
                                </li>
                                <li><a href="#shorttermprediction" data-toggle="tab"><h4>Short Term Prediction</h4></a>
                                </li>
                                <li><a href="#longtermprediction" data-toggle="tab"><h4>Long Term Prediction</h4></a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                            
                                <div class="tab-pane fade in active" id="StockInformation" >
                                   
                                   <br>
                                    <h4>Stock Details</h4>
                                    
                    
			                            <div id="stockDetailsTable"  style="width: 500px; display: inline-block;" >
			                                <table class="table ">
			                                
			                                   <tbody>
			                                        <tr>
				                                    <th>Latest Price </th> <td id="real_latestPrice"> </td>                         
				                                    </tr>
				                                    <tr>
				                                    <th >Latest Volume </th> <td id="real_latestVolume"> </td> 
				                                    </tr>
				                                    <tr>
				                                    <th >Ten Day's High </th> <td id="real_10daysHigh"> </td>
				                                    </tr>
				                                    <tr>
			                                    	<th>Year's Average </th> <td id="real_yearAvg"> </td>                            	
			                                    	</tr>	
			                                    	<tr>
			                                    	<th>Year's Low </th> <td id="real_yearLow"> </td>
			                                    	</tr>
			                                  
			                                    </tbody>
			                                </table>
			                            </div>
			                            <!-- /.table-responsive -->
			                            
			                           
			                            <div id= "moreInfo"  style="display: inline-block; width: 400px; float:right;">
			                            	<div class="panel panel-default">
						                        <div class="panel-heading">
						                          <h4> List the of companies having the average stock price lesser than the lowest of <b><%=StockName%></b> in the latest one year</h4>
						                        </div>
						                        <!-- /.panel-heading -->
						                        <div class="panel-body">
						                            <table id="OtherStocksDataTable" class="table table-hover" >
													<thead>
													<tr>
						                                            <th>Symbol</th>
						                                            <th>Company Name</th>
						                               
						                             </tr>
													</thead>
													
												    
												    </table>
						                        </div>
						                        <!-- /.panel-body -->
						                    </div>
	                                 		<!-- /.panel -->
			                      
			                            </div>
			                           <br>
			                           
					                    <!-- Chart/Graph for realtime stockdata  -->
		                                <div class="" style="display: inline-block;width: 900px;">
					                        
					                        
					                                <div class="" id="realstockvariationchart"></div>
					                            
					                        
                                 		</div>
                                </div>
                                <!-- /.RealTime Data -->
                                
                                 <!-- Historical Data Tab -->
                                <div class="tab-pane fade" id="historicaldata" >
                                <br>
                                    <h4>Historical Stock Details</h4>
                                    <hr>
                             
                                	 <div class="panel">
						             <div class="panel-heading">
						             <p> Please choose the dates to view histocial stock data of <%=StockName%></p>								                                    	
                                	<div class="form-group"  style="display: table-cell;" >
                                	<label>From Date </label>
					               		<div class='input-group'> 
					               		<span class="input-group-addon">
					                        	<span class="glyphicon glyphicon-calendar"></span>
					                    </span>
						                    <input id="FromDate_Input" type='text' class="form-control date" style="width: 150px; ">
						                </div>
						                				                	
					                </div>
					               <p class="form-group" style="display: table-cell; " >  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </p>
					               
					                <div class="form-group" style="display: table-cell;" >
                                	 <label>To Date </label>
						                <div class='input-group'>
							                <span class="input-group-addon">
						                        	<span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                    <input id="ToDate_Input"  type='text' class="form-control date" style="width: 150px;">
						                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						                    <button type="button" class="btn btn-success" onclick="displayHistoricalData()">Submit</button>
						                 </div>
					                	
					                </div>
					                </div>
					                </div>
					                <br>
					                		 <!-- Chart/Graph for historical stockdata  -->
			                                <div id="histchartdiv" class=""  style="display: block;">
						                        
						                                <div class="" id="histstockvariationchart"></div>
						                     
						                        
	                                 		</div>						             
	                                 		 <br>
						              		 <br>
						              		 <div class="">
						                                <table  class=" table table-striped table-hover " id="historicaldatatable">
						                                    <thead>
						                                        <tr>
						                                            <th>Date</th>
						                                            <th>Open Price (USD)</th>
						                                            <th>Close Price (USD)</th>
						                                            <th>High Price (USD)</th>
						                                            <th>Low Price (USD)</th>
						                                            <th>Volume</th>
						                                            <th>Adj Close Price (USD)</th>
						                                        </tr>
						                                    </thead>
						                                    						                                    
						                                </table>
						                            </div>
						              		 
						              
                                </div>
                                 <!-- /.Historical Data Tab -->
                                 
                                 <!-- Short Term Prediction -->
                                <div class="tab-pane fade" id="shorttermprediction"  onselect="getShortTermPrediction()" >
                                <br>
                                	<div class="center">
                                	<h4 >Short Term Prediction for <%=StockName%> stock prices</h4>
                                	<hr>
                                	<br>
                                	<button type="button" class="btn btn-success" onclick="getShortTermPrediction()" > Get Latest Prediciton</button>						                 
                                	</div>
                                    
                                 <br>     		
				                            <div id="shortTermPrediction" style="visibility: hidden;">
				                             <h3 id="ST_latestPrice"></h3>
				                             <br>
				                                <table class="table table-striped table-hover " id="shortTermTable" >
				                                    <thead>
				                                        <tr>
				                                            <th>Time (EDT)</th>
				                                            <th>Short Term Predicted Values (USD)</th>
				                                            
				                                        </tr>
				                                    </thead>
				                                </table>
				                            </div>
				                            <!-- /.table-responsive -->
				                        
                				</div>
                               <!-- /.Short Term Prediction -->
                               
                                <div class="tab-pane fade" id="longtermprediction">
                                <br>
                                <div class="">
                                    <h4>Long Term Prediction for the next 10 days</h4> 
                                    <br>
                                    <button type="button" class="btn btn-success" onclick="getLongTermPrediciton()"> Get Prediction</button>
								</div>	
                                    <hr>
                                    <br>
                                	<!--  								                                    	
                                	<div class="form-group"  style="display: table-cell;" >
                                	<label>From Date </label>
					               		<div class='input-group'> 
					               		<span class="input-group-addon">
					                        	<span class="glyphicon glyphicon-calendar"></span>
					                    </span>
						                    <input id="FromDate_Input_LongTerm" data-provide="datepicker" type='text' class="form-control" style="width: 150px;">
						                </div>
						                				                	
					                </div>
					                
					               <p class="form-group" style="display: table-cell; " >  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </p>
					               
					                <div class="form-group" style="display: table-cell;" >
                                	 <label>To Date </label>
						                <div class='input-group'>
							                <span class="input-group-addon">
						                        	<span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                    <input id="ToDate_Input_LongTerm"  data-provide="datepicker" type='text' class="form-control" style="width: 150px;">
						                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						                    <button type="button" class="btn btn-success" onclick="getLongTermPrediciton()"  >Get Prediction</button>
						                 </div>
					                	
					                </div>
					                --> 
					                
									<h4>Long Term Prediction Details</h4>
					              	<hr>
						             
							          <div class="dataTable_wrapper" style="width: 500px; display: inline-block;">
				                            	
					                                <table  class="table table-striped table-hover" id="longTermDatatable">
					                                    <thead>
					                                        <tr>
					                                            <th>Date</th>
					                                            <th>Predicted Price (USD)</th>
					                                            		                                            
					                                        </tr>
					                                    </thead>
					                                    
					                                </table>
					                     </div>
					                     
						              			<div class="panel panel-red" style="display:inline-block; width:450px; float: right;">
							                        <div class="panel-heading">
							                          
							                        </div>
							                        <!-- /.panel-heading -->
							                        <div class="panel-body">
							                        
							                        	<div >
										                	<label>Start Date : </label> &nbsp;
										                	<h4 id="startDate_Long" class="form-control-static" style="display: inline"></h4>
										                </div>
										                
										                 <div>
										                 	<label>End Date : </label>&nbsp;
										                 	<h4 id="endDate_Long" class="form-control-static"  style="display: inline" ></h4>
										                 </div>
										                
										                 <div>
										                 	<label>Our Recommendation : </label>&nbsp;
										                 	<h3 id="recom_Long" class="form-control-static"  style="display: inline; color: orange; font-style:italic;" ></h3>
										                 </div>
							                        
							                        </div>
							                        <!-- /.panel-body -->
						                   		 </div>
						              	<br>
			                            <br>
			                            
										<!-- Chart/Graph for Long Term Prediction  -->
							              
			                                <div style="display:block;" >
						                        
						                           <h4>Long Term Prediction Graph with Historical details</h4>
						                           <hr>
						                        
						                                <div id="longTermchart" style="height: 400px; min-width: 310px" ></div>
						                            
						                        
	                                 		</div>	
	                                 	
                                </div>
                                <!-- /. Long Term Prediction -->
                                
                            </div>
                            <!-- /. tab content -->
                        </div>
                        <!-- /.panel-body -->
                        
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                 <!-- /.row -->
                
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
   
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../bower_components/jquery/dist/jquery.js"></script>
   

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    
    

     <!-- Flot Charts JavaScript 
    <script src="../bower_components/flot/*.js"></script>
        <script src="../js/flot-data.js"></script>
    -->
    
    <script src="../bootstrap-datepicker-1.4.0/js/bootstrap-datepicker.js"></script>
   
    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    
    <!-- HighCHarts -->
    <script src="http://code.highcharts.com/stock/highstock.js"></script>
    <script src="http://code.highcharts.com/stock/modules/exporting.js"></script>
    
    <script type="text/javascript">    

    

    $(document).ready(function() {
    	
    		$(".currentDate").html((new Date).toString());
    	
    		//Load Stock Details
		
    		getStockDetails();
    		generateRealtimeStockDataGraph();
    		getListOfOtherStocks();
    		initializeDatepicker();
    		

    } );//document ready ends here
    
    Date.prototype.yyyymmdd = function() {
		
		   var yyyy = this.getFullYear().toString();
		   var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based
		   var dd  = this.getDate().toString();
		   return yyyy +"-" + (mm[1]?mm:"0"+mm[0]) +"-" + (dd[1]?dd:"0"+dd[0]); // padding
		   
	  };
    
    
    function initializeDatepicker()
    {
    	$( ".date" ).datepicker({
	    	
	    	format: 'yyyy-mm-dd',
	    	
	    })
    } 
    		
    
    //Function for Getting Stock Details		
    function getStockDetails(){
    	
    	var _url = "<%=WebServiceConnect.WebServiceSingleStockDetails+StockSymbol%> ";
    
    	
			$.ajax({
    			
				type: "GET",
    			datatype: "application/jsonp",
    			url: _url,
    	       
    		 success: function(result, status,xhr){
    			 
    			   
    	    	   $("#real_latestPrice").html(result.latestprice+" USD");
    	    	   $("#real_10daysHigh").html(result.tendayhigh+" USD");
    	    	   $("#real_yearAvg").html(result.yearavg+" USD");
    	    	   $("#real_yearLow").html(result.yearlow+" USD");
    	    	   $("#real_latestVolume").html(result.latestvolume);
    	    	  
    	    	   
    	       },
				error: function(xhr,status,error){
					
					alert("getStockDetails() error");
				}
					
    	    }); 
    	}
    
    function generateRealtimeStockDataGraph()
    {	
    	var _url = "<%=WebServiceConnect.WebServiceRealtimeStockData+StockSymbol%>";
    	var titleText1 = "<%=StockName%>";
		var titleText2 = " Stock Prices";
		var titleText = titleText1 + titleText2;
    	
    	 var graphData = Array();
    	 
         $.ajax({
             type: "GET",
             datatype: "application/jsonp",
             url: _url,
             success: function (result, status, xhr) {
                 var data = result.data;
                 //alert(data);
                 var j = 0;
                 for (var i = data.length - 1; i >= 0; i--, j++) {
                     var dateString = data[i][1] + " " + data[i][2];
                     var d = new Date(dateString);
                     //alert(d.valueOf());
                     var dataPoint = new Array(d.getTime(), parseFloat(data[i][3]));
                     graphData[j] = dataPoint;
                 }

                 Highcharts.setOptions({
                     global: {
                         useUTC: false
                     }
                 });

                 //alert(graphData);
                 if (graphData.length > 0) {
                     // create the chart
                     $("#realstockvariationchart").highcharts('StockChart', {
                         title: {
                             text: titleText
                         },
                         subtitle: {
                             text: 'Using ordinal X axis'
                         },

                         xAxis: {
                             gapGridLineWidth: 0
                         },
                         rangeSelector: {
                             buttons: [{
                                 type: 'hour',
                                 count: 1,
                                 text: '1h'
                             }, {
                                 type: 'day',
                                 count: 1,
                                 text: '1D'
                             }, {
                                 type: 'all',
                                 count: 1,
                                 text: 'All'
                             }],
                             selected: 1,
                             inputEnabled: false
                         },

                         series: [{
                             name: titleText1,
                             type: 'area',
                             data: graphData,
                             gapSize: 5,
                             tooltip: {
                                 valueDecimals: 2
                             },
                             fillColor: {
                                 linearGradient: {
                                     x1: 0,
                                     y1: 0,
                                     x2: 0,
                                     y2: 1
                                 },
                                 stops: [
                                     [0, Highcharts.getOptions().colors[0]],
                                     [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                                 ]
                             },
                             threshold: null
                         }]
                     });
                 }
             },
             error: function (xhr, status, error) {
                 alert("error");
             }
         });

  
    	
    }
    
    function getListOfOtherStocks()
	{
		
			var url = "<%=WebServiceConnect.WebServiceListOfOtherStocks+StockSymbol%>";
	       
					 
			//Other Stocks DataTable
			
	  	    	$('#OtherStocksDataTable').dataTable( {
	  		        
	  	    		"processing": false,
	  		      	"serverSide": false,
	  		        "destroy": true,
	  		      	"paging": false,
	  		      	"searching": false,
	  		      "ordering": true,
	  	        "info":     false,
	  		     	 "ajax": url
	  	            
	  	        } );			 
			 
		
	}
    
    function onclickStockInfo()
    {
    	getStockDetails();
    	getListOfOtherStocks();
    }
    
    
    function displayHistoricalData()
	
	{  
    	var URL;
    	var html_table_id = "#historicaldatatable"
    	//Get fromDate and toDate
		var fromDate = $("#FromDate_Input").val();
		var toDate = $("#ToDate_Input").val();
    	
		if(fromDate == "" || toDate =="")
			{
				if(fromDate == "" && toDate =="")
				{
					URL ="";
					getHistoricalData(URL, html_table_id);

				}
				else
				{
					alert("Please select correct From Date / To Date");
				}
			}
		else
			{
				if(fromDate >= toDate)
				{
					alert(" From-Date cannot be greater than To-Date");
				}
				else
					
				{
					var url1 = "<%=WebServiceConnect.WebServiceHistoricalStockData + StockSymbol%>";

					var url2 = "&startdate=" + fromDate + "&enddate=" + toDate ;
		  		
					URL = url1 +url2;
					
					//alert(URL);
					getHistoricalData(URL,html_table_id);
				
					
					
				}
				
			
			}
		
		
		
	}
	
	function getHistoricalData(URL, html_table_id)
	{		
		//$(html_table_id).css("visibility", "visible");

		//Historical DataTable
  	    	$(html_table_id).dataTable( {
  		        "processing": true,
  		      	"serverSide": false,
  		        "destroy": true,
  		      	"paging": true,
  		      	"searching": false,
  		     	  
  	            "ajax": URL
  	            
  	        } );
		
  	    generateHistoricalGraph(URL);
	   			
			
	}
	
	function generateHistoricalGraph(URL)
	{
		//Display the chart now
		//$("#histchartdiv").css("visibility", "visible");
		
		var titleText1 = "<%=StockName%>";
		var titleText2 = " Stock Prices";
		var titleText = titleText1 + titleText2;
		
		var graphData = Array();            
        $.ajax({
            type: "GET",
            datatype: "application/jsonp",
            url: URL,
            success: function (result, status, xhr) {
                var data = result.data;
                //alert(data);
                var j = 0;
                for (var i = data.length - 1; i >= 0; i--, j++) {
                    var dateString = data[i][0];
                    var d = new Date(dateString);
                    var dataPoint = new Array(d.getTime(), parseFloat(data[i][1]));
                    graphData[j] = dataPoint;
                }
                //alert(graphData);
                if (graphData.length > 0) {
                    $(function () {
                        $('#histstockvariationchart').highcharts('StockChart', {
                            rangeSelector: {
                                selected: 1
                            },
                            title: {
                                text: titleText
                            },
                            series: [{
                                name: titleText1,
                                data: graphData,
                                tooltip: {
                                    valueDecimals: 2
                                }
                            }]
                        });
                    });
                }
            },
            error: function (xhr, status, error) {
                alert("error");
            }
        });
		
		
		
		
	}
	
	
	function getShortTermPrediction()
	{
		var url = "<%=WebServiceConnect.WebServiceShortTermPrediction+StockSymbol%>";
			
		$("#shortTermPrediction").css("visibility", "visible");
		
		//Short term DataTable
  	    	$('#shortTermTable').dataTable( {
  		        "processing": true,
  		        "serverSide": false,
  		      	"paging": false,
  		      	"searching": false,
  		        "destroy": true,
  		     	  
  	            "ajax": url
  	            
  	        } );
	   			
  	    	
			
	}
	
	function getLongTermPrediciton()
	{
		var _url = "<%=WebServiceConnect.WebServiceLongTermPrediction+StockSymbol%>";
		
		$.ajax({
			
			type: "GET",
			//datatype: "application/jasonp",
			url: _url,
	       
		 success: function(result, status,xhr){
					    	
			 	//Generate the Graph
			 	genLongTermGraph(result.data);
			 
			 
			 	//long term DataTable
	     	    $('#longTermDatatable').dataTable( {
	     		        "processing": true,
	     		        "serverSide": false,
	     		      	"paging": false,
	     		      	"searching": false,
	     		        "destroy": true,
	     		     	  
	     	            "ajax": _url,
	     	            
	     	        } );
		    	   
	     	   
	     	   
	    	   $("#startDate_Long").html(result.startdate);
	    	   $("#endDate_Long").html(result.enddate);
	    	   $("#recom_Long").html(result.decision);
	    	   
	    	   
	 
	       },
			error: function(xhr,status,error){
				
				alert("error");
			}
				
	    });
		
		
	}
	
	
	function genLongTermGraph(longPredictedData)
	{
		
		//Get the curr date and Set both the dates to current date.
		var currDate = new Date();
		var PrevDate15days = new Date();
		var AheadDate10day = new Date();
		
		//Get only current the date of the month.
		var currDayOfMonth = currDate.getDate();
		
		//Get th date 15 days prior to curr data
		PrevDate15days.setDate(currDayOfMonth - 15);
		
		var fromDate = PrevDate15days.yyyymmdd();
		
		//toDate is current date in YYYY-MM-DD format
		var toDate   = currDate.yyyymmdd();
		
		//alert(fromDate);
		
		//Get th date 10 days ahead of curr data
		AheadDate10day.setDate(currDayOfMonth + 10);
		
		//var fromDate ="2015-04-15";
		//var toDate = "2015-05-01";
		
		var seriesOptions = [2];
		var seriesCounter = 0;
		
		 Highcharts.setOptions({
             global: {
                 useUTC: false
             }
         });
		
		
        for (var x = 0; x < 2; x++) 
        {
            var historicalData = Array();
            var predictedData = Array();
            
            //First get historical data
            if (x == 0) {
            	
            	var url1 = "<%=WebServiceConnect.WebServiceHistoricalStockData + StockSymbol%>";

				var url2 = "&startdate=" + fromDate + "&enddate=" + toDate ;
	  		
				URL = url1 +url2;
				
            	
                $.ajax({
                    type: "GET",
                    datatype: "application/jsonp",
                    url: URL,
                    success: function (result, status, xhr) {
                        var data = result.data;
                        //alert(data);
                        var j = 0;
                        for (var i = data.length - 1; i >= 0; i--, j++) {
                            var dateString = data[i][0];
                            var d = new Date(dateString);
                            var dataPoint = new Array(d.getTime(), parseFloat(data[i][2]));
                            historicalData[j] = dataPoint;
                        }
                        seriesOptions[0] = {
                            name: 'Actual value',
                            data: historicalData
                        };
                        seriesCounter++;
                        if (seriesCounter === 2) {
                            createChart();
                        }
                    },
                    error: function (xhr, status, error) {
                        alert("error");
                    }
                });
            }
            //Second get long term predictions
            else {
               
                        var data = longPredictedData;
                        //alert(data);
                        var j = 0;
                        for (var i = data.length - 1; i >= 0; i--, j++) {
                            var dateString = data[i][0];
                            var d = new Date(dateString);
                            var dataPoint = new Array(d.getTime(), parseFloat(data[i][1]));
                            predictedData[j] = dataPoint;
                        }
                        seriesOptions[1] = {
                            name: 'Predicted value',
                            data: predictedData
                        };
                        seriesCounter++;
                        if (seriesCounter === 2) {
                            createChart();
                        }

                    
            		}
        	}//for
        	
		     // create the chart when all data is loaded
		      createChart = function(){
		            $('#longTermchart').highcharts('StockChart', {
		                rangeSelector: {
		                    selected: 0
		                },
		                colors: ['blue', 'magenta'],
		                tooltip: {
		                    pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
		                    valueDecimals: 2
		                },
		
		                series: seriesOptions
		            });
		        };
        	
        	
        	

	}//function

	

	
	

    </script>
    
    

</body>

</html>

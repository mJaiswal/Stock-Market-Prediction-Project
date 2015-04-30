
<%@page import="ru.group13.spring2015.StockData"%>
<%@ page import="java.util.*" %>

<%
	
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
                                <li class="active"><a href="#StockInformation" data-toggle="tab"><h4>Stock Information</h4></a>
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
                            
                                <div class="tab-pane fade in active" id="StockInformation">
                                   
                                   <br>
                                    <h3>Stock Details</h3>
                                    <br>
                    
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
			                            
			                           
			                            <div id= "moreInfo"  style="display: inline-block; width: 600px; float:right;">
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
			                           <br>
					                    <!-- Chart/Graph for realtime stockdata  -->
		                                <div class="" style="display: inline-block;width: 800px;  float: center">
					                        
					                           <h4>Real-time Stock Price Variation Graph</h4>
					                           <hr>
					                        
					                        
					                            <div class="flot-chart">
					                                <div class="flot-chart-content" id="realstockvariationchart"></div>
					                            </div>
					                        
                                 		</div>
                                </div>
                                <!-- /.RealTime Data -->
                                
                                 <!-- Historical Data Tab -->
                                <div class="tab-pane fade" id="historicaldata" >
                                <br>
                                    <h4>Historical Data</h4>
                                    <hr>
                                	<br>
                                	 <div class="panel">
						             <div class="panel-heading">								                                    	
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
												<div class="">
						                                <table  class=" table table-striped table-hover " id="historicaldatatable" style="visibility:hidden; ;" >
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
						                						              
						              <!-- Chart/Graph for historical stockdata  -->
						              <br>
						              <br>
		                                <div id="histchartdiv" class="" style="display: inline-block;width: 800px;  float: center; visibility: hidden;">
					                        
					                           <h4>Historical Stock Price Variation Graph</h4>
					                           <hr>
					                        
					                        
					                            <div class="flot-chart">
					                                <div class="flot-chart-content" id="histstockvariationchart"></div>
					                            </div>
					                        
                                 		</div>
                                </div>
                                 <!-- /.Historical Data Tab -->
                                 
                                 <!-- Short Term Prediction -->
                                <div class="tab-pane fade" id="shorttermprediction"  onselect="getShortTermPrediction()" >
                                <br>
                                	<div class="center">
                                	<h4 >Short Term Prediction of Stock Prices</h4>
                                	<hr>
                                	<br>
                                	<button type="button" class="btn btn-success" onclick="getShortTermPrediction()" > Get Latest Prediciton</button>						                 
                                	</div>
                                    
                                 <br>     		
				                            <div id="shortTermPrediction" style="visibility: hidden;">
				                                <table class="table table-striped table-hover " id="shortTermTable" >
				                                    <thead>
				                                        <tr>
				                                            <th>Time (EST)</th>
				                                            <th>Predicted Values (USD)</th>
				                                            
				                                        </tr>
				                                    </thead>
				                                </table>
				                            </div>
				                            <!-- /.table-responsive -->
				                        
                				</div>
                               <!-- /.Short Term Prediction -->
                               
                                <div class="tab-pane fade" id="longtermprediction">
                                <br>
                                    <h4>Long Term Prediction for the next 10 days</h4>
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
					                <button type="button" class="btn btn-success" onclick="getLongTermPrediciton()"> Get Long Term Prediction</button>
									
									<br>
					              	<br>
						             
						             <div id="LongTermDetails"  style="visibility: hidden; text-align: center;"   >  
						              
						                <div class="form-group"  style="display: inline-block;" >
						                	<label>Start Date : </label> &nbsp;
						                	<h4 id="startDate_Long" class="form-control-static" style="display: inline"></h4>
						                </div>
						                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						                 <div class="form-group" style="display: inline-block;" >
						                 	<label>End Date : </label>&nbsp;
						                 	<h4 id="endDate_Long" class="form-control-static"  style="display: inline" ></h4>
						                 </div>
						                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						                 <div class="form-group" style="display: inline-block;" >
						                 	<label>Recommendation : </label>&nbsp;
						                 	<h3 id="recom_Long" class="form-control-static"  style="display: inline; color: orange; font-style:italic;" ></h3>
						                 </div>
						                 
						                 <br>
						                 <br>
						                 
						                
			                            <div class="dataTable_wrapper" style="display: inline-block; width: 600px; float:left; ">
			                            	<h4>Long Term Prediction Data</h4>
			                            <hr>
			                                <table  class="table table-striped table-hover" id="longTermDatatable">
			                                    <thead>
			                                        <tr>
			                                            <th>Date</th>
			                                            <th>Predicted Price (USD)</th>
			                                            		                                            
			                                        </tr>
			                                    </thead>
			                                    
			                                </table>
			                            </div>
			                            <!-- /.table-responsive -->
			                            
			                            <!-- 
			                            <div class="dataTable_wrapper" style="display: inline-block; width: 600px; float:right;">
			                            <h4>Historical Data</h4>
			                            <hr>
			                                <table  class="table table-striped  table-hover" id="longTermHistDatatable" >
			                                    <thead>
			                                        <tr>
			                                            <th>Date</th>
			                                            <th>Day's High</th>
			                                            <th>Day's Low</th>
			                                            
			                                        </tr>
			                                    </thead>
			                                    
			                                </table>
			                            </div>
			                            <!-- /.table-responsive -->
			                            
										
										<!-- Chart/Graph for Long Term Prediction  -->
							              
			                                <div class="" style="display: inline-block; width: 800px;  float: right">
						                        
						                           <h4>Long Term Prediction Graph</h4>
						                           <hr>
						                        
						                            <div class="flot-chart">
						                                <div class="flot-chart-content" id="longTermchart"></div>
						                            </div>
						                        
	                                 		</div>	
	                                 	
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
    
    <script type="text/javascript">    

    

    $(document).ready(function() {
    	
    	
    		//Load Stock Details
		
    		getStockDetails();
    		getListOfOtherStocks();
    		initializeDatepicker();
    		

    } );//document ready ends here
    
    
    function initializeDatepicker()
    {
    	$( ".date" ).datepicker({
	    	
	    	format: 'yyyy-mm-dd',
	    	
	    })
    } 
    		
    
    //Function for Getting Stock Details		
    function getStockDetails(){

			$.ajax({
    			
				type: "GET",
    			datatype: "application/jasonp",
    			url: "http://443d6043.ngrok.io/com.stockprediction/rest/services/stockdetails?symbol="+"<%=StockSymbol%>",
    	       
    		 success: function(result, status,xhr){
    			 
    			   
    	    	   $("#real_latestPrice").html(result.latestprice+" USD");
    	    	   $("#real_10daysHigh").html(result.tendayhigh+" USD");
    	    	   $("#real_yearAvg").html(result.yearavg+" USD");
    	    	   $("#real_yearLow").html(result.yearlow+" USD");
    	    	   $("#real_latestVolume").html(result.latestvolume);
    	    	   
    	       },
				error: function(xhr,status,error){
					
					alert("error");
				}
					
    	    });
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

					URL = "http://443d6043.ngrok.io/com.stockprediction/rest/services/historicaldata?symbol=" + "<%=StockSymbol%>" + "&startdate=" + fromDate + "&enddate=" + toDate;
		  		
					getHistoricalData(URL,html_table_id);
					
					//Display the chart now
					$("#histchartdiv").css("visibility", "visible");
				}
				
			
			}
		
		
		
	}
	
	function getHistoricalData(URL, html_table_id)
	{		
		$(html_table_id).css("visibility", "visible");
	
		//Historical DataTable
  	    	$(html_table_id).dataTable( {
  		        "processing": true,
  		      	"serverSide": false,
  		        "destroy": true,
  		      	"paging": true,
  		      	"searching": false,
  		     	  
  	            "ajax": URL
  	            
  	        } );
	   			
			
	}
	
	
	function getShortTermPrediction()
	{
		var url = "http://443d6043.ngrok.io/com.stockprediction/rest/services/shortterm?symbol=" + "<%=StockSymbol%>";
			
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
		var _url = "http://443d6043.ngrok.io/com.stockprediction/rest/services/longterm?symbol=" + "<%=StockSymbol%>";
	
		
		$.ajax({
			
			type: "GET",
			//datatype: "application/jasonp",
			url: _url,
	       
		 success: function(result, status,xhr){
			 
			 //Now make the div visible
		    	$('#LongTermDetails').css("visibility", "visible");
			 
			 	//long term DataTable
	     	    var t =	$('#longTermDatatable').dataTable( {
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
	    	   
	    	 
	    	 
	    	  // var dataSource = JSON.parse(result.data);
	    	   
	    		//alert(result.data);
	    	   
	    	 
	    	   
	     	 
	       },
			error: function(xhr,status,error){
				
				alert("error");
			}
				
	    });
		
		
		
		
	}
	
	function getListOfOtherStocks()
	{
		
			var url ="http://443d6043.ngrok.io/com.stockprediction/rest/services/listavglowthan?symbol=" + "<%=StockSymbol%>";
	       
					 
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
	

	

	
	

    </script>
    
    

</body>

</html>

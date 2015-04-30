
<%@page import="ru.group13.spring2015.StockData"%>
<%@ page import="java.util.*" %>

<%
	String StockSymbol = "";
	String StockName ="" ;
	String imagePath = "./stockicons/default.png";
	StockSymbol = request.getParameter("symbol");
	
	
	StockData stockData = new StockData();
	
	//Get the Stock Details from the webservice 

	//Set the correct image for stock icon
	if(StockSymbol != null)
	{
		if(StockSymbol.equalsIgnoreCase("AAPL"))
		{
			imagePath = "./stockicons/apple.png";
		}
		else if(StockSymbol.equalsIgnoreCase("GOOG"))
		{
			imagePath = "./stockicons/google.png";
		}
		else if(StockSymbol.equalsIgnoreCase("INTC"))
		{
			imagePath = "./stockicons/intel.png";
		}
		else if(StockSymbol.equalsIgnoreCase("YHOO"))
		{
			imagePath = "./stockicons/yahoo.png";
		}
		else if(StockSymbol.equalsIgnoreCase("TSLA"))
		{
			imagePath = "./stockicons/tesla.png";
		}
		else if(StockSymbol.equalsIgnoreCase("WMT"))
		{
			imagePath = "./stockicons/walmart.png";
		}
		else if(StockSymbol.equalsIgnoreCase("CSCO"))
		{
			imagePath = "./stockicons/cisco.png";
		}
		else if(StockSymbol.equalsIgnoreCase("MSFT"))
		{
			imagePath = "./stockicons/microsoft.png";
		}
		else if(StockSymbol.equalsIgnoreCase("BAC"))
		{
			imagePath = "./stockicons/bankofamerica.png";
		}
		else if(StockSymbol.equalsIgnoreCase("JNPR"))
		{
			imagePath = "./stockicons/junipernetworks.png";
		}

		
		//System.out.println("StockSymbol is " + StockSymbol + " imagePath is " + imagePath);

		
		
	}	
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stock Details - <%=StockName%> </title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript">    
   // var $k = jQuery.noConflict();
	
      
    	 	

 
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
                <a class="navbar-brand">Online Stock Prediction</a>
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
                         <a href="Statistics.jsp"><i class="fa fa-th"></i> More Statistics</a>
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
                                
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-12">
                      
                      <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1" data-toggle="tab">Tab1</a>
                                </li>
                                <li><a href="#tab2" data-toggle="tab">Tab2</a>
                                </li>
                                
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                            
                            	<div class="tab-pane fade" id="tab1" >
                            	</div>
                            
                                 <!--  Tab -->
                                <div class="tab-pane fade" id="tab2" >
                                    <h4>Historical Data</h4>
                                	<br>
                                	 <div class="panel panel-primary">
						             <div class="panel-heading">								                                    	
                                	<div class="form-group"  style="display: table-cell;" >
                                	<label>From Date </label>
					               		<div class='input-group'> 
					               		<span class="input-group-addon">
					                        	<span class="glyphicon glyphicon-calendar"></span>
					                    </span>
						                    <input id="FromDate_Input" data-provide="datepicker" type='text' class="form-control" style="width: 150px;">
						                </div>
						                				                	
					                </div>
					               <p class="form-group" style="display: table-cell; " >  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </p>
					               
					                <div class="form-group" style="display: table-cell;" >
                                	 <label>To Date </label>
						                <div class='input-group'>
							                <span class="input-group-addon">
						                        	<span class="glyphicon glyphicon-calendar"></span>
						                    </span>
						                    <input id="ToDate_Input"  data-provide="datepicker" type='text' class="form-control" style="width: 150px;">
						                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						                    <button type="button" class="btn btn-success" onclick="getHistoricalData()">Submit</button>
						                 </div>
					                	
					                </div>
					                </div>
					                </div>

							                 <div class="panel panel-red"  >
						                        <div class="panel-heading">
						                            Information
						                        </div>
						                        <!-- /.panel-heading -->
						                        <div class="panel-body">
						                            <div class="dataTable_wrapper">
						                                <table  class="table table-striped table-bordered table-hover" id="datatable">
						                                    <thead>
						                                        <tr>
						                                            <th>Date</th>
						                                            <th>Open Price</th>
						                                            <th>Day's High</th>
						                                            <th>Day's Low</th>
						                                            <th>Closing Price</th>
						                                            <th>Volume</th>
						                                            <th>Adjacent Close</th>
						                                        </tr>
						                                    </thead>
						                                    
						                                </table>
						                            </div>
						                            <!-- /.table-responsive -->
											     </div>
						                        <!-- /.panel-body -->
						                    </div>
						                    <!-- /.panel -->  
						                						              
						                
					           
                                </div>
                                 <!-- /.Historical Data Tab -->
                                 
                                        
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
    

     <!-- Flot Charts JavaScript -->
    <script src="../bower_components/flot/*.js"></script>
        <script src="../js/flot-data.js"></script>
    
    
    <script src="../bootstrap-datepicker-1.4.0/js/bootstrap-datepicker.js"></script>
    
    <script type="text/javascript">    
   // var $k = jQuery.noConflict();

    $(document).ready(function() {
    	
    	
    		
 
    </script>
    
    

</body>

</html>

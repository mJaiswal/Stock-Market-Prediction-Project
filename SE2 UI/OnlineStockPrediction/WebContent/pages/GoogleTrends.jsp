

<%@page import="ru.group13.spring2015.UserInformation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%

//Author - Milin Jaiswal
	
	
	
	 

 %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Milin Jaiswal">

    <title>User Main Page</title>

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
    <style type="text/css">
  /*  
    select#stockSelect option[value="AAPL"] { background-image:url(stockicons/apple.png);   }
	select#stockSelect option[value="GOOG"] { background-image:url(stockicons/google.png); }
	select#stockSelect option[value="YHOO"] { background-image:url(stockicons/yahoo.png); }
	select#stockSelect option[value="MSFT"]   { background-image:url(stockicons/microsoft.png);   }
	select#stockSelect option[value="INTC"] { background-image:url(stockicons/intel.png); }
	select#stockSelect option[value="TSLA"] { background-image:url(stockicons/tesla.png); }
	select#stockSelect option[value="CSCO"] { background-image:url(stockicons/cisco.png);   }
	select#stockSelect option[value="BAC"] { background-image:url(stockicons/bankofamerica.png); }
	select#stockSelect option[value="WMT"] { background-image:url(stockicons/walmart.png); }
	select#stockSelect option[value="JNPR"] { background-image:url(stockicons/junipernetworks.png); }
    
    */
    
    </style>

</head>

<body>

    <div id="wrapper">

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
                <a class="navbar-brand">Welcome <%//session.getAttribute("userName").toString() %> !</a>
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
                        <li><a href="../signin.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                         <a href="#"><i class="fa fa-sitemap fa-fw"></i> Stocks <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                             <li>
                                 <a id="AAPL" href="StockInfo.jsp?symbol=AAPL"> <img src="stockicons/apple.png" height="40" width="40"/> Apple</a>
                             </li>
                             <li>
                                 <a id="GOOG" href="StockInfo.jsp?symbol=GOOG"><img src="stockicons/google.png" height="40" width="40"/> Google</a>
                             </li>
                             <li>
                                 <a id="YHOO" href="StockInfo.jsp?symbol=YHOO"><img src="stockicons/yahoo.png" height="40" width="40"/> Yahoo</a>
                             </li>
                             <li>
                                 <a id="MSFT" href="StockInfo.jsp?symbol=MSFT"> <img src="stockicons/micosoft.png" height="40" width="40"/> Microsoft</a>
                             </li>
                             <li>
                                 <a id="INTC" href="StockInfo.jsp?symbol=INTC"><img src="stockicons/intel.png" height="40" width="40"/> Intel</a>
                             </li>
                             <li>
                                 <a id ="TSLA" href="StockInfo.jsp?symbol=TSLA"><img src="stockicons/tesla.png" height="40" width="40"/> Tesla</a>
                             </li>
                             <li>
                                 <a id="CSCO" href="StockInfo.jsp?symbol=CSCO"><img src="stockicons/cisco.png" height="40" width="40"/> Cisco</a>
                             </li>
                             <li>
                                 <a id="BAC" href="StockInfo.jsp?symbol=BAC"><img src="stockicons/bankofamerica.png" height="40" width="40"/> Bank of America</a>
                             </li>
                             <li>
                                 <a id="WMT" href="StockInfo.jsp?symbol=WMT"><img src="stockicons/walmart.png" height="40" width="40"/> Walmart</a>
                             </li>
                             <li>
                                 <a id ="JNPR" href="StockInfo.jsp?symbol=JNPR"><img src="stockicons/junipernetworks.png" height="40" width="40"/> Juniper Networks</a>
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
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"> Google Trends </h3>
  						
  							<div class="form-group">
  							
	                              <label>Select Company(s)</label>
	                              <select id="stockSelect" multiple class="form-control" style="height: 184px; width: 449px">
	                              	  <option value="aapl">Apple Inc.</option>
	                              	  <option value="goog">Google Inc.</option>
	                              	  <option value="yhoo">Yahoo Inc.</option>
	                              	  <option value="msft">Microsoft Corp.</option>
	                              	  <option value="intc">Intel Corp.</option>
	                              	  <option value="tsla">Tesla Motors, Inc.</option>
	                              	  <option value="csco">Cisco Systems, Inc.</option>
	                              	  <option value="bac">Bank of America Corp.</option>
	                              	  <option value="wmt">Wal-Mart Stores, Inc.</option>
	                              	  <option value="jnpr">Juniper Networks, Inc.</option>
	                             
	                              </select><br><button onclick="getGoogleTrends()" class="btn btn-success">Submit Button</button><br>
	                              
	                          	  
	                              
	                          </div>
	                          
	                          <div >
	                          
	                          <iframe id="GoogleGraph" 
	                          src="http://www.gmodules.com/ig/ifr?url=http://www.google.com/ig/modules/trends_gadget.xml&amp;source=imag&amp;up_is_init=true&amp;up_cur_term=Adam+Lambert,+Allison+Iraheta,+Danny+Gokey,+Kris+Allen&amp;up_date=mtd&amp;up_region=US" style="border:1px solid #ccc; padding:10px;" width="900px" height="500px" frameborder="0" scrolling="no"></iframe>
	                          </div>
	                         
             
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
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

	<script type="text/javascript">
	
	//Function for Getting Google Trends CHart		
    function getGoogleTrends(){

		var selectedSymbols = $('select#stockSelect').val();
		
		alert(selectedSymbols);
		
			$.ajax({
    			
				
    		url: "http://www.google.com/trends/fetchComponent?hl=en-US&q=" + selectedSymbols + "&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=300",
    		 
    		 success: function(result, status,xhr){
    			 
    			   
    	    	  $('#GoogleGraph').html(result);
    	    	   
    	       },
				error: function(xhr,status,error){
					
					alert("error");
				}
					
    	    });
    	}
	
	</script>

</body>

</html>


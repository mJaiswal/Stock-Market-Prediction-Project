<%@page import="ru.group13.spring2015.*"%>



<%

/*
 written by: Milin Jaiswal
 assisted by: Vidur Nyyar
 debugged by: Milin Jaiswal
*/
	
	UserInformation userInfo = new UserInformation();
	
		/*userInfo.setFirstName("Milin");
		userInfo.setLastName("Jaiswal");
		userInfo.setEmailAddress("milin.business@gmail.com");
		userInfo.setPassword("dd");
		userInfo.setCompany("Rutgers University - New Brunswick");
		userInfo.setPhone("484-432-3865");
		userInfo.setPosition("Graduate Student");*/
	
		String userEmail = request.getParameter("userEmail");
		/*String url= WebServiceConnect.WebServiceUserRegisteration;

		URL object=new URL(url);

		HttpURLConnection con = (HttpURLConnection) object.openConnection();

		con.setDoOutput(true);

		con.setDoInput(true);

		con.setRequestProperty("Content-Type", "application/json");

		con.setRequestProperty("Accept", "application/json");

		con.setRequestMethod("POST");
		
		con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
	    
		OutputStreamWriter wr= new OutputStreamWriter(con.getOutputStream());
		
		wr.write(json.toString());*/
	    
	    
		//display what returns the POST request

		/*StringBuilder sb = new StringBuilder();  

		int HttpResult =con.getResponseCode(); 

		if(HttpResult ==HttpURLConnection.HTTP_OK){

		    BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(),"utf-8"));  

		    String line = null;  

		    while ((line = br.readLine()) != null) {  
		    sb.append(line + "\n");  
		    }  

		    br.close();  

		    System.out.println(""+sb.toString());  

		}else{
		    System.out.println(con.getResponseMessage());  
		}  
		*/
		
		
		
	
	/*	Use the session variable userEmail( its unique) and get the user details
	*	using the webservice for user details. Then parse it into UserInformation Object.
	*/
	/*
	if(session != null)
	{
		String userEmail = session.getAttribute("userEmail").toString();
		//Now based on the userEmail , use webservice to fetch all the user info into the userInfo object.
	
		
	}*/
	
	
	
	 

 %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

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
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

	
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
                <a class="navbar-brand">Welcome  <%//session.getAttribute("userName").toString()%> !</a>
            </div>
        <!-- / Nav header -->

		<!-- Top Nav Bar -->
            <ul class="nav navbar-top-links navbar-right">
            	<li class="currentDate"> </li>
            	
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
                <div class="row">
                    <div class="col-lg-12">
                    
                        <h3 class="page-header"> My Profile </h3>
  						<br>
                    
                             <div class="panel-heading">
                           		 <h3>General Details</h3>
                        	</div>
                        	
                        	<div  class="panel-body" style="width: 600px;" >
                                <table class="table">
                                
                                   <tbody>
                                        <tr>
	                                    <th>First Name </th> <td id="firstName"></td>                         
	                                    </tr>
	                                    <tr>
	                                    <th >Last Name </th> <td id="lastName"> </td> 
	                                    </tr>
	                                    <tr>
	                                    <th >Company </th> <td id="company"> </td>
	                                    </tr>
	                                    <tr>
                                    	<th>Position </th> <td id="position"></td>                            	
                                    	</tr>	
                                    	              
                                    </tbody>
                                </table>
                          </div>
                     
                        <div class="panel-heading">
                            <h3>Contact Details</h3>
                        </div>
                        
                            <div  class="panel-body" style="width: 600px;" >
                                <table class="table">
                                
                                   <tbody>
                                        <tr>
	                                    <th>Email </th> <td id="email"></td>                         
	                                    </tr>
	                                    <tr>
	                                    <th >Phone </th> <td id="phone"></td>   
	                                    </tr>
	                                   
                                    </tbody>
                                </table>
                          
                             </div>
                            
                         
                         
                             
                             
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
    
  
	
	<script type="text/javascript">
	
	
	$(document).ready(function() {
    	
		getUserDetails();	
		
	/*	$(".currentDate").html((new Date).toString());
    		
    		//turn to inline mode
			$.fn.editable.defaults.mode = 'inline';
			
    		$('#user').editable({ });
    		*/
    		
    		
		    

    } );
	
	function getUserDetails(){
    	
		
    	var _url = "<%=WebServiceConnect.WebServiceUserDetails+userEmail%>";
    
    	
			$.ajax({
    			
				type: "GET",
    			datatype: "application/jasonp",
    			url: _url,
    	       
    		 success: function(result, status,xhr){
    			 
    			   
    	    	   $("#firstName").html(result.firstName);
    	    	   $("#lastName").html(result.lastName);
    	    	   $("#company").html(result.company);
    	    	   $("#position").html(result.position);
    	    	   $("#email").html(result.email);
    	    	   $("#phone").html(result.phone);
    	    	  
    	    	   
    	       },
				error: function(xhr,status,error){
					
					alert(status);
				}
					
    	    }); 
    	}
	
	
	
	
	
	
	</script>

</body>

</html>


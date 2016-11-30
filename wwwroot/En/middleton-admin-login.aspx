<%@ Page Language="C#" AutoEventWireup="true" CodeFile="middleton-admin-login.aspx.cs" Inherits="En_Middleton_Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="image/favicon.ico">
    <title>Admin Login-Middleton solicitors</title>
    
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">


    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!--[if IE]>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!---testinonials Start--->


    <!---testinonials End--->
        <script>
javascript:history.forward(1);
</script>
</head>
<body>
    <form id="form1" runat="server">
         <!-- start header -->
    <header id="headerArea">
    
        <nav class="navbar-fixed-top">
            <div class="container">
                <ul class="nav-pills list-unstyled pull-right">
               
                    <li> <span class="mail"> <i class="fa fa-envelope"> </i><a href="mailto:reception@middletonsolicitors.co.uk " style="color:#FFFFFF;" class="active_link head_mail">reception@middletonsolicitors.co.uk</a> </span> <i class="fa fa-phone"></i><span class="head_mail">+44 (0)151 236 5599</span></li>
                </ul>
                
            </div>
		</nav>
        
        <div class="navbar head_fix iphone iphone03">
            <div class="container">
        
        
        <a class="navbar-brand" href="index.aspx"><img src="images/logo.gif" title="Back To Home" ></a><a href="conveyancing-online-quote.aspx" class="pull-right quick-conveyance-btn">Quick Conveyance Quote</a>
        
        
        <div class="container" id="page">
	<div id="content">

       
	</div> <!-- /content -->
</div>

</div>
</div>      
        
    </header>
    <!-- end header -->
    <div class="container">
                <div class="row">
                    <div class="text-center col-sm-12">
                    	<h2>Admin Login</h2>
                        <hr>
                    </div>
                    <table align ="center" >
                        <tr style="height: 30px;">
                            <td>UserName</td><td>:</td>
        <td><asp:TextBox ID="txt_Name" class="form-control" runat="server" placeholder="Username"></asp:TextBox></td>
                        </tr>
                        <tr style="height: 60px;">
                            <td>Password</td><td>:</td>
        <td><asp:TextBox ID="txt_Password" class="form-control" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                        <td></td><td></td>
                         <td><asp:Button ID="btn_submit" class="btn btn-success" runat ="server" 
                                 Text ="Login" onclick="btn_submit_Click"/></td>
                        </tr>
                    </table>
    </div> </div> 
  
      <!-- start footer Area -->
    <footer id="footerArea">
		<div class="container">             
            <div class="row">
                <div class="col-sm-3">
                    <%--<h2>About Us</h2>
                    <p>Middleton Solicitors was established in 2004 by Alan Middleton.
Mr Middleton has over 30 years experience as a solicitor and has an enviable reputation as a top class lawyer and negotiator.
The firm has expanded rapidly and now has office in Liverpool City Centre with over 40 staff</p>
                    <a href="#" class="btn btn-default">Lorem</a>--%>
                </div>
                
                <div class="col-sm-3">
                      <%--<h2>How We Work</h2>
                    <ul class="list-unstyled">
                    	<li><a href="#"> Pricing models</a></li>
                    	<li><a href="#">Dedicated Team</a></li>
                    	<li><a heef="#">Time & Services</a></li>
                    	<li><a heef="#">Management approach</a></li>
                        
                    	<li><a heef="#">Support & Warranty</a></li>
                    	<li><a heef="#">Customer Care</a></li>
					</ul> --%>
					
                </div>
                
                <div class="col-sm-3">
                    <%--<h2>Address</h2>
                    <ul class="list-unstyled">
                    	<li><a href="#"><i class="fa fa-envelope">  </i> reception@middletonsolicitors.co.uk</a></li>
                    	<!--<li><a href="#"><i class="fa fa-envelope">  </i> reception@middletonsolicitors.co.uk</a></li>-->
                    	<li><i class="fa fa-phone">  </i> +44 (0)151 236 5599, +44 (0)151 236 9749</li>
                    	<li> <address><i class="fa fa-home"> </i> Middleton Solicitors	 	Middleton Solicitors
135-137 Dale Street	 	Floor 4, 19 Old Hall Street
Liverpool	 	Liverpool
L2 2JH</address></li>
                        <li><a href="#"><span><i class="fa fa-map-marker">  </i> Click to see map</span></a></li>
					</ul>--%>
                </div>
                <div class="col-sm-3 images">
                    <%--<h2>Follw Us</h2>
                    <ul class="list-unstyled pics">
                        <li><a href="#"><img class="img-rounded" src="images/fb.png" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="images/twitter.png" alt=""></a></li>
                        
                    </ul>--%>
                </div>
            </div>		
        </div>
        <div class="clearfix"></div>
        <div class="disclaimer">
			<div class="container">
                <div class="col-sm-6">
                    <p class="footer_con">©2014 middleton solicitors. All rights reserved | Powered By <a href="http://www.aphtechnologies.com/ "target="_blank">APH Technologies</a></p>
                </div>
                <!--<div class="col-sm-6">
                    <ul class="pull-right list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Sitemap</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Service</a></li>
                    </ul>
                </div>-->
            </div>
        </div>
	</footer>
    <!-- end footer Area -->
    </form>
</body>
</html>

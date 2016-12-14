<%@ Page Language="C#" AutoEventWireup="true" CodeFile="conveyancing-online-quote.aspx.cs" Inherits="En_conveyancing_online_quote" %>

<%@ Register Src="~/usercontrol/service_enquiry_popup.ascx" TagName="popup" TagPrefix="uc1" %>
<%@ Register Src="~/usercontrol/Middleton_Newsletter.ascx" TagName="newsletter" TagPrefix="uc2" %>
<%@ Register Src="~/usercontrol/Middleton_Trust_Law_View.ascx" TagName="trustview" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />

    <title>CONVEYANCING ONLINE QUOTE</title>
    <meta name="description" content="Our firm’s personal injury solicitors team having expertise in claiming compensation for road accidents, injuries at the workplace, and also we specialize in claiming for accidents or illness overseas to the victims affected." />
    <meta name="keywords" content="personal injury solicitors liverpool, personal injury services, personal injury claim, personal injury solicitor UK, personal injury compensation claim, accident compensation claim" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <!--[if IE]>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!---ENQUIRY FORM START--->

    <!---ENQUIRY FORM END--->
    <!-----------Back To Top Start----------------->

    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('.scrollup').fadeIn();
                } else {
                    $('.scrollup').fadeOut();
                }
            });

            $('.scrollup').click(function () {
                $("html, body").animate({ scrollTop: 0 }, 600);
                return false;
            });

        });
    </script>

    <!-----------Back To Top End----------------->
 <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88835329-1', 'auto');
  ga('send', 'pageview');

</script>  
</head>

<body>
    <form id="form1" runat="server" data-toggle="validator">
        <asp:ScriptManager ID="ScriptManager1" runat="server"
            EnableHistory="true" />
        <!-- start header -->
        <header id="headerArea">
    
        <nav class="navbar-fixed-top">
            <div class="container">
               <ul class="nav-pills list-unstyled pull-right skybe01">
               
                    <li class="skybe02"> <span class="mail"> <i class="fa fa-envelope"> </i><a href="mailto:reception@middletonsolicitors.co.uk " style="color:#FFFFFF;" class="active_link head_mail">reception@middletonsolicitors.co.uk</a> </span> <i class="fa fa-phone" ></i><span class="head_mail" >+44 (0)151 236 5599</span></li>
                </ul>
            </div>
		</nav>
        
        <div class="navbar head_fix iphone iphone03">
            <div class="container">
        
        
        <a class="navbar-brand" href="index.aspx"><img src="images/logo.gif" title="Back To Home" ></a><a href="conveyancing-online-quote.aspx" class="pull-right quick-conveyance-btn">Quick Conveyance Quote</a>
        
        

    <div id="menu1 grid_left" class="menu_container green full_width grid_menu pull-right">
        <label for="hidden_menu_collapser" class="mobile_collapser">Menu</label> <!-- Mobile menu title -->
        <input id="hidden_menu_collapser" type="checkbox">
        <ul>
            <li>
                <a href="index.aspx" title="Home">Home</a>
                
            </li>
            <li>
                <a href="about-us.aspx" title="About Us">About Us</a>
                <div class="menu_dropdown_block full_width">
                    <div class="md-container">
                        <div class="column span4 bordered">
                            <div class="content">
                                <ul>
                                   <li><a href="news_list.aspx" title="News">News</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </li >
            <li>
                <a href="#" title="Services" class="active1">Services</a>
                <div class="menu_dropdown_block full_width">
                    <div class="md-container">
                        <div class="column span4 bordered">
                            <div class="content">
                                <h2 class="menuh">Specialist Areas</h2>
                                <ul>
<li><a href="commercial-law.aspx" title="Commercial Litigation">Commercial Litigation</a></li>
<li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
<li><a href="military-law.aspx" title="Military Law">Military Law</a></li>
<li><a href="personal-injury-claim.aspx" title="Personal Injury">Personal Injury Claims</a></li>
<li><a href="employment.aspx" title="Employment">Employment</a></li>
                       </ul>
                            </div>
                        </div>
                        
                        <div class="column span4 bordered service01">
                            <div class="content">
                               
                              <ul>
<li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance ">Recovering Payment Protection Insurance </a></li>
<li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>   
<li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>								
<li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts">Wills, Probate and Trusts</a></li>								
<li><a href="housing-disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
<li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li>
                             </ul>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </li>
            
            <li>
                <a href="our-team.aspx" title="Our Team">Our Team</a>
                
            </li>
            <li>
                <a href="enquiry.aspx" title="Enquiry">Contact Us</a>
                
            </li>
             <li> <a href="testimonials.aspx" title="Testimonials">Testimonials</a></li>
            <li >
                <a href="contact-us.aspx" style="border-right:none; box-shadow:none;" title="Locate Us">Locate Us</a>
                <div class="menu_dropdown_block full_width">
                    <div class="md-container">
                        <div class="column span50per bordered">
                            <div class="content">
                                <h2 class="menuh">Our locations</h2>
                                <div class="overflow">
                                  
                                
                             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1189.2004234975163!2d-2.9886636418108954!3d53.4076569939107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487b213027714007%3A0xefb2fafe7aec3c6c!2sStanley+St%2C+Liverpool%2C+Merseyside+L1+6AF%2C+UK!5e0!3m2!1sen!2sin!4v1444802275408" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen=""></iframe>

                                </div>
                            </div>
                        </div>
                       
                        
                        <div class="column span2 pull-right">
                            <div class="content">
                                <h2 class="menuh">Middleton Solicitors</h2>
                                <ul class="add">	 
                        		 <li> Granite House,
                                 8/ 10 Stanley Street,    
  							    Liverpool, 
                                L1 6AF</li>
                                <li>Tel: +44 (0)151 236 5599</li>
                                 <li>Fax: +44 (0)151 236 9749</li>
                         </ul>
                            </div>
	 	
                        </div>
                        
                       
                    </div>
                </div>
            </li>

      </ul>
    </div><!-- /menu --> 

       

    
       

</div>
</div>


        
    </header>
        <!-- end header -->

        <!-- start Container -->
        <section id="container">

        <!-- start breadcrumb -->
        
        <!-- end breadcrumb -->

		<div class="container">
			<div class="row">
                <div class="col-sm-8">
                    <div class="sideArea">
							 <h2>CONVEYANCING ONLINE QUOTE</h2>
                       
                      <p>Important update: Stamp duty was radically reformed in the December 2014 Autumn Statement.
From 4th December the slab style system has been axed and a new progressive income tax-style system introduced.</p>
                     <div class="clearfix"></div>
                      <!--  <b>For properties in excess of £1,000,000 - Please contact us <a href="contact-us.aspx"> (click here) </a>for a personal conveyancing quotation.</b>-->
                         <div class="clearfix"></div>
                        <br />
                        <span class="hd-quite">Online Conveyancing Quote:</span>
                     
                         <div class="1nd-div" style="visibility:visible">
                        <ul id="ultag" class="service_li 1st-div">
                            <panel>For an immediate conveyancing quotation, please choose the type of conveyancing service you require:</panel>
                            <li id="saleonly"><a href="#" id="1" onclick="getPaging(this.id)"> Sale Only</a></li>
                            <li id="purposeonly"><a href="#" id="2" onclick="getPaging(this.id)"> Purchase Only</a></li>
                            <li id="purchase"><a href="#" id="3" onclick="getPaging(this.id)"> Sale & Purchase</a></li>
                            <li id="remortgage"><a href="#" id="4" onclick="getPaging(this.id)"> Remortgage</a></li>
                            <p>Please use the form below to contact us and we will call you straight back, or you can call us on  <span class="call_on">0151 236 9900</span></p> 
                	 </ul> 
                             </div>  

                         <div  class="2nd-div" style="visibility:hidden">
                            <p>For an immediate conveyancing quotation, please enter a price:</br></br>
                            <span id="purchaseprice">Sale Price:</span>
                          <img src="images/symbol-lg.png" />
                                <input id="txtAmount" type="text" /><br />
                                <span id="errmsg" style="color:red"></span>
                                <div id="subdiv" style="display:none">
                                    <span id="saleprice">Sales Price:</span> 
                                 <img src="images/symbol-lg.png" />
                                <input id="txtSaleAmount" type="text" /><br />
                                <span id="errmsg2" style="color:red"></span>
                                </div>
                                
                                <span id="msg_warning" style="color:red" ></span><br/>
                                <span>(Please do not use commas, example: 100000)</span></p>
                            <button id="btnCalculate" type="button" class="fancybox.iframe a_demo_four item" style="border:none;">Calculate Fees</button>

                        </div>
                        

                         <div class="3nd-div" style="visibility:hidden">
<%--                            <p>Online Conveyancing Quote <br />--%>
                          Sale Price:&#163;<span id="txtinputAmount">10000</span><br />
                                <b>Breakdown of Fees</b></p>
                             <table id="tbDetails" class="quit-table" runat="server" clientidmode="Static" >                                   
                                  <thead>                                    
                                       <tr><td>Item</td><td>Cost</td></tr>
                                 </thead>
                                                   
                                 <tbody>

                                 </tbody>                           
                               </table>
                             <table class="quit-table" >
                                <tbody>
                                    <tr >
                                          <td colspan="2" valign="middle" align="center" style="width:300px"><br />
                                            <a id="btnclickhere" href="#"><img src="images/button-png.png"  /></a></td>
                                       </tr>
                                  </tbody>
                             
                              </table>
                        </div>
                        <div id="alert" class="alert alert-danger" style="position:absolute;display:none" role="alert">
                                 <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                 <span class="sr-only">Error:</span>
                                  Based on the information you provided, we cannot provide you with an Instant Online Quote at this time.  Please go back and try again.  Thank you.
                       </div>
					     <div class="4th-div" style="visibility:hidden">
                            <p>For more information on the quote you generated, please provide the following information below.  All fields are required.</p>
                         
                         <div class="form-div">
                             <label class="label-div">Name:</label>
                             <input type="text" class="input-div" id="txtName" />
                             <div class="clearfix"></div>
                             <label class="label-div">Email Address:</label>
                             <input type="text" class="input-div" id="txtEmail" />
                             <div class="clearfix"></div>
                             <label class="label-div">Your Mailing Address:</label>
                             <input type="text" class="input-div" id="txtYourMail"/>
                             <div class="clearfix"></div>
                             <label class="label-div">Town:</label><input type="text" id="txtTown" class="input-div"/>
                             <div class="clearfix"></div>
                             <label class="label-div">Postcode:</label><input type="text" id="txtPostCode" class="input-div"/>
                             <div class="clearfix"></div>
                             <label class="label-div">Contact Phone:</label><input type="text" id="txtContackNo" class="input-div" />
                             <div class="clearfix"></div>
                             <label class="label-div">Sale Price:</label><input type="text" id="txtSalePrice" class="input-div"/>
                             <div class="clearfix"></div>
                             <label class="label-div">Sale Address:</label><input type="text" id="txtSaleAddr" class="input-div" />
                             <div class="clearfix"></div>
                             <label class="label-div">Purchase Price:</label><input type="text" id="txtPurchasePrice" class="input-div"/>
                             <div class="clearfix"></div>
                             <label class="label-div">Purchase Address:</label><input type="text" id="txtPurchaseAddr" class="input-div"/><div class="clearfix"></div>
 
                         </div> 
  
                    </div>

                        
                </div>
                


            </div>
                <div class="col-sm-3 pull-right">
                    <div class="categories">

                        <!-- Start links -->
                        <div class="links">
                            <h2>Services</h2>
    
                            <ul class="list-unstyled">
                                <li><a href="personal-injury-claim.aspx" title="Personal Injury" >Personal Injury Claims</a></li>
                                <li><a href="commercial-law.aspx" title="Commercial Law" >Commercial Law</a></li>
                                 <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>    
                                <%-- <li><a href="family-law.aspx" title="Family Law">Family Law</a></li>--%>
                                <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>						
                                <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
                                 <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>								
                                 <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                           <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>
                                <li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li>	
                        <li><a href="conveyancing-online-quote.aspx" title="conveyancing-online-quote " class="seractive01">Conveyancing Online Quote</a></li>
                                  <%--    <li><a href="consignment.aspx" title="Consignment"> Consignment</a></li>	--%>
                                
                            </ul> 
						</div>
                        <!-- End links -->

                        <!-- Start Tabs -->
                            <uc3:trustview ID ="Trustview1" runat ="server" />
                        <!-- End Tabs -->

                        <!-- Start links -->
                            <uc2:newsletter ID ="Newsletter1" runat ="server" />
                        <!-- End links -->

                     
                    </div>
				</div>

		</div>

    </section>
        <!-- end Container -->

        <!-- start footer Area -->
        <footer id="footerArea">
		<div class="container">             
            <div class="row">
                <div class="col-sm-3 footer_ab" id="tab_view">
                    <h2>About Us</h2>
                    <p class="justify">Middleton Solicitors was established in 2004 by Alan Middleton. Mr. Middleton has over 30 years' experience as a solicitor and has an enviable reputation as a top class lawyer and negotiator. The firm has expanded rapidly and now has office in Liverpool City Centre that employs over 30 staff; it retains   a friendly and common-sense approach to our clients and their legal needs. </p>
                    
                      
                    <a href="about-us.aspx" class="btn btn-default" title ="View More">View More</a>
                </div>
                
                <div class="col-sm-3 footer_li" id="Div1">
                      <h2>How We Work</h2>
                    <ul class="list-unstyled">
                    	 <li><a href="commercial-law.aspx" title="Commercial Law">Commercial Law</a></li>
                        <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                        <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>	
                    	<li><a href="personal-injury-claim.aspx" title="Personal Injury" >Personal Injury Claims</a></li>
                        <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>
                        <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>         
                        <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>          
                        <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>  
                       <li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li>                        
                        <li><a href ="faq.aspx" title ="FAQ">FAQ</a></li>

                    </ul> 
					
                </div>
                
                <div class="col-sm-3 footer_add footer_middle" id="Div2">
                    <h2>Contact Details</h2>
                    <ul class="list-unstyled">
          			
                      <li>
                   		<span class="col-xs-12 add1">
                             <p><!-- <span class="middle_footer">Head Office</span>-->  Middleton Solicitors <br/>Granite House,<br/> 8/ 10 Stanley Street,Liverpool L1 6AF. </p> 
                              <p>+44 (0)151 236 5599,<br> +44 (0)151 236 9749.</p>
                             </span> 
                             
                            
                             
                          </li>
                        
                         <li><a href="mailto:reception@middletonsolicitors.co.uk" title ="Click here to Mail"><i class="fa fa-envelope">  </i>reception@middletonsolicitors.co.uk</a></li>
                         
                     
                        <li><a href="contact-us.aspx" title ="Click to see Map"><span><i class="fa fa-map-marker">  </i> Click to see map</span></a></li>
                        <li>Middleton Solicitors is regulated by the Solicitors Regulation Authority | SRA Identification Number: 468726</li>
					</ul>
                </div>
                
                
                
                
                       <div class="col-sm-3 images footer_last" id="Div3">
                    <h2>Follow Us</h2>                
                    <ul class="list-unstyled pics">
                        <li><a href="https://www.facebook.com/MiddletonSolicitors" target ="_blank" title="Facebook"><img class="img-rounded" src="images/fb.png" alt=""></a></li>
                        <li><a href="https://twitter.com/MiddletonSols" target ="_blank" title="Twitter"><img class="img-rounded" src="images/twitter.png" alt=""></a></li>
                        <li><a href="http://in.linkedin.com/pub/middleton-solicitior/9a/981/5b0/" target ="_blank" title="Linkedin"><img class="img-rounded" src="images/linkedin.png""></a></li> 
                    </ul>
                 
                 
                     <h2 style="clear:both;">Get In Touch</h2>
                    <ul  class="list-unstyled pics">
                    	<li><img src="images/qr-code.png" title="Middleton Solicitors" width="50" height="50"></li>
                        
                        <a href="#" class="scrollup" title="Go To Top" >Scroll</a>
                    </ul> 
            	
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
           <style>
        @media only screen and (max-width: 760px), (max-device-width: 1024px) and (min-device-width: 768px)
table, thead, tbody, th, td, tr {
    display: grid !important;
}
    </style>
	</footer>
        <!-- end footer Area -->

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="js/scrolld.min.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>


        <!-- include the plugin -->
        <script src="js/jquery-crotator.js"></script>
        <!-- initializing the plugin -->
        <script type="text/javascript">
            function getPaging(str) {
                switch (str) {
                    case "1":
                        document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote - Sale Only";
                        document.getElementsByClassName('1nd-div')[0].style.display = 'none';
                        document.getElementsByClassName('2nd-div')[0].style.display = 'block';
                        document.getElementsByClassName('2nd-div')[0].style.visibility = 'visible';
                        document.getElementsByClassName('2nd-div')[0].style.position = 'absolute';
                        $('#saleonly').addClass('active');
                        break;
                    case "2":
                        document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote - Purchase Only";
                        document.getElementsByClassName('1nd-div')[0].style.display = 'none';
                        document.getElementsByClassName('2nd-div')[0].style.display = 'block';
                        document.getElementsByClassName('2nd-div')[0].style.visibility = 'visible';
                        document.getElementsByClassName('2nd-div')[0].style.position = 'absolute';
                        $('#purposeonly').addClass('active');
                        document.getElementById("purchaseprice").textContent = "Purchase Price:";
                        break;
                    case "3":
                        document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote - Sale & Purchase";
                        document.getElementsByClassName('1nd-div')[0].style.display = 'none';
                        document.getElementsByClassName('2nd-div')[0].style.display = 'block';
                        document.getElementsByClassName('2nd-div')[0].style.visibility = 'visible';
                        document.getElementsByClassName('2nd-div')[0].style.position = 'absolute';
                        $('#purchase').addClass('active');
                        document.getElementById('subdiv').style.display = 'block';
                        document.getElementById("purchaseprice").textContent = "Purchase Price:";
                        break;
                    case "4":
                        document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote - Remortgage";
                        document.getElementsByClassName('1nd-div')[0].style.display = 'none';
                        document.getElementsByClassName('2nd-div')[0].style.display = 'block';
                        document.getElementsByClassName('2nd-div')[0].style.visibility = 'visible';
                        document.getElementsByClassName('2nd-div')[0].style.position = 'absolute';
                        $('#remortgage').addClass('active');
                        document.getElementById("purchaseprice").textContent = "Mortgage Required:";

                        break;
                    default:
                }
            }


            $("#quotes").crotator({
                // optional changes
                timeofExistence: 3000,
                typeofTag: "<h3/>",
                tagClass: "quotes"
            });
            $("#authors").crotator({
                // optional changes
                timeofExistence: 3000,
                typeofTag: "<h4/>",
                tagClass: "authors"
            });


        </script>

        <!-------Enquiry form Start------>


        <script src="js/jquery.tinymodal.js"></script>
        <script>

            $('.button').click(function () {
                $.tinyModal({
                    title: 'Enquiry Form',
                    html: '#mymodal'

                });
            });

            function GetData(activestring) {
                var row = "";
                var dataToSend = JSON.stringify({ 'filterstring': activestring, 'txtAmount': $('#txtAmount').val(), 'txtSaleAmount': $('#txtSaleAmount').val() });
                $.ajax({
                    type: "POST",
                    url: "conveyancing-online-quote.aspx/GetDetails",
                    data: dataToSend,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        $.each(msg.d, function (index, obj) {
                            row += "<tr><td>" + obj.Item + "</td><td>" + obj.Cost + "</td></tr>";
                        });

                        $("#tbDetails tbody").append(row);
                    }
                });
            }


            $("#btnCalculate").click(function () {
                $('#txtAmount').val() == "" ? document.getElementById('alert').style.display = 'block' : document.getElementById('alert').style.display = 'none';
                var activestring = $('ul#ultag').find('li.active').attr('id');
                debugger;
                var amt_val = parseInt($('#txtAmount').val());
                var amt_sal = parseInt($('#txtSaleAmount').val());
                if ($('#txtAmount').val() != "" && activestring != "remortgage" && activestring != "purchase" && amt_val <= 750000) {
                    
                    switch (activestring) {
                        case "saleonly":
                            document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote";
                            document.getElementsByClassName('2nd-div')[0].style.display = 'none';
                            document.getElementsByClassName('3nd-div')[0].style.visibility = 'visible';
                            GetData(activestring);
                            document.getElementById("txtinputAmount").textContent = $('#txtAmount').val();
                            break;
                        case "purposeonly":
                            document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote";
                            document.getElementsByClassName('2nd-div')[0].style.display = 'none';
                            document.getElementsByClassName('3nd-div')[0].style.visibility = 'visible';
                            GetData(activestring);
                            document.getElementById("txtinputAmount").textContent = $('#txtAmount').val();

                            break;
                        
                        default:
                    }
                }
                else if ($('#txtAmount').val() != "" && $('#txtSaleAmount').val() != "" && activestring == "purchase" && amt_val <= 750000 && amt_sal <= 750000)
                {
                    document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote";
                    document.getElementsByClassName('2nd-div')[0].style.display = 'none';
                    document.getElementsByClassName('3nd-div')[0].style.visibility = 'visible';
                    GetData(activestring);
                    document.getElementById("txtinputAmount").textContent = $('#txtAmount').val();
                    
                }
                else if ($('#txtAmount').val() != "" && activestring == "remortgage" && amt_val <= 500000) {

                    switch (activestring) {
                        case "remortgage":
                            document.getElementsByClassName("hd-quite")[0].textContent = "Online Conveyancing Quote";
                            document.getElementsByClassName('2nd-div')[0].style.display = 'none';
                            document.getElementsByClassName('3nd-div')[0].style.visibility = 'visible';
                            GetData(activestring);
                            document.getElementById("txtinputAmount").textContent = $('#txtAmount').val();

                            break;
                        default:
                    }
                }
                else
                {
                    if (activestring == "purchase")
                    {
                        if ($('#txtAmount').val() == "" || $('#txtSaleAmount').val() == "")
                        {
                            if ($('#txtAmount').val() == "" && $('#txtSaleAmount').val() == "")
                                $("#msg_warning").html("Enter Sales & Purchase Prise.").show();
                            else if($('#txtAmount').val() == "")
                                $("#msg_warning").html("Enter Purchase Prise.").show();
                            else if($('#txtSaleAmount').val() == "")
                                $("#msg_warning").html("Enter Sales Prise.").show();
                        }
                            
                        else
                        $("#msg_warning").html("Please contact us directly for quote").show();
                    }
                    else
                    {
                        if($('#txtAmount').val()=="")
                            $("#msg_warning").html("Enter Proper Amount.").show();
                        else
                            $("#msg_warning").html("Please contact us directly for quote").show();
                    }
                    
                }
            });

            $("#btnclickhere").click(function () {
                document.getElementsByClassName('3nd-div')[0].style.display = 'none';
                //document.getElementsByClassName('4nd-div')[0].style.display = 'block';
                document.getElementsByClassName('4th-div')[0].style.visibility = 'visible';

            });

            $("#txtAmount").keypress(function (e) {
                //if the letter is not digit then display error and don't type anything
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    //display error message
                    $("#errmsg").html("Digits Only").show().fadeOut("slow");
                    return false;
                }
            });

            $("#txtSaleAmount").keypress(function (e) {
                //if the letter is not digit then display error and don't type anything
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    //display error message
                    $("#errmsg2").html("Digits Only").show().fadeOut("slow");
                    return false;
                }
            });

            $("#btnEnquiry").click(function () {
                var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;

                if ($('#txtName').val() == '' || $('#txtEmail').val() == '' || $('#txtYourMail').val() == '' || $('#txtTown').val() == '' || $('#txtPostCode').val() == '' || $('#txtContackNo').val() || $('#txtSalePrice').val() == '' || $('#txtPurchasePrice').val() == '' || $('#txtPurchaseAddr').val() == '') {
                    alert("Please fill all fields...!!!!!!");
                }
                else if (!emailRegex.test($('#txtEmail').val())) {
                    alert("Enter valid Email...!!!!!!");
                }
                else if (!emailRegex.test($('#txtYourMail').val())) {
                    alert("Enter Your Email...!!!!!!");
                }
                else {
                    var dataToSend = JSON.stringify({
                        'txtName': $('#txtName').val(),
                        'txtEmail': $('#txtEmail').val(),
                        'txtYourMail': $('#txtYourMail').val(),
                        'txtTown': $('#txtTown').val(),
                        'txtPostCode': $('#txtPostCode').val(),
                        'txtContackNo': $('#txtContackNo').val(),
                        'txtSalePrice': $('#txtSalePrice').val(),
                        'txtSaleAddr': $('#txtSaleAddr').val(),
                        'txtPurchasePrice': $('#txtPurchasePrice').val(),
                        'txtPurchaseAddr': $('#txtPurchaseAddr').val()
                    });
                    debugger;
                    $.ajax({
                        type: "POST",
                        url: "conveyancing-online-quote.aspx/SendMail",
                        data: dataToSend,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            if (msg) {
                                $('input:text').val('');
                            }

                        }
                    });
                }

            });

        </script>


        <!-------Enquiry form Start------>
    </form>
    
</body>
   

</html>

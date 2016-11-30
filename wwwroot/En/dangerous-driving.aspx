<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dangerous-driving.aspx.cs" Inherits="En_dangerous_driving" %>
<%@ Register Src ="~/usercontrol/service_enquiry_popup.ascx" TagName ="popup" TagPrefix ="uc1" %>
<%@ Register Src ="~/usercontrol/Middleton_Newsletter.ascx" TagName ="newsletter" TagPrefix ="uc2" %>
<%@ Register Src ="~/usercontrol/Middleton_Trust_Law_View.ascx" TagName ="trustview" TagPrefix ="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">

<title>Dangerous Driving</title>
<meta name="description" content="Middleton Solicitors Company Liverpool, offering PPI Recovery solutions to the UK people to claim. We can claim your Payment protection Insurance and Penalty over limit and late payment credit card charges." />
<meta name="keywords" content="ppi recovery company liverpool, ppi claims liverpool, payment protection insurance recovery services UK, best ppi recovery companies in liverpool, ppi recovery, ppi claim" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/flexslider.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
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

</head>
<body>
    <form id="form1" runat="server">
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
    <input id="hidden_menu_collapser" type="checkbox"/>
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
                            <h2 class="menuh">About Us</h2>
                            <ul>
                                <li><a href="news_list.aspx" title="News">News</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </li >
        <li>
            <a href="#" title="Services"  class="active1">Services</a>
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
                                    <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance ">Recovering Payment Protection Insurance </a></li>
                       </ul>
                            </div>
                        </div>
                        
                        <div class="column span4 bordered service01">
                            <div class="content">
                               
                              <ul>

<li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>   
<li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>								
<li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts">Wills, Probate and Trusts</a></li>								
<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
<li><a href="driving-difence.aspx" title="Driving Difence">Driving Difence</a></li>
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
							<h2>Dangerous Driving</h2>
                    <p><img src="images/dangerousdriving.jpg" class="img-responsive" alt=""></p>
                    <p align="justify">A person commits the offence of dangerous driving if they drive on a road or in a public place and the standard of their driving falls “far below” what would be expected of a “competent and careful driver”. </p>
                    <p align="justify">Dangerous driving is a very serious offence which attracts a sentence of up to 2 years imprisonment and disqualification from driving for a minimum of 12 months.  Following the period of disqualification, the extended driving re-test will have to be passed in order to apply for your driving licence.</p>                      
                    <p align="justify">If you need free initial advice in respect of all motoring offences call Middleton Solicitors Driving Defence Team for free on 0800 464 0010.</p>
                        
                      
                    <div class="clearfix"></div>
                    <br />
                     
                      
                    <div class="wrap">
                        <uc1:popup ID="popup1" runat="server"/>


</div>
                    
                    
                    
                </div>
            </div>
            <div class="col-sm-4 pull-right">
                <div class="categories">

                    <!-- Start links -->
                    <div class="links">
                        <h2>Services</h2>
    
                        <ul class="list-unstyled">
                            <li><a href="commercial-law.aspx" title="Commercial Law" >Commercial Law</a></li>
                    <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                    <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>	
                    <li><a href="personal-injury-claim.aspx" title="Personal Injury" >Personal Injury Claims</a></li>
                    <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>
                    <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>         
                    <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>          
                    <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
					<li><a href="employment.aspx" title="Employment">Employment</a></li>								
					<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
                            <li><a href="driving-difence.aspx" title="Driving Difence">Driving Difence</a>
                        <ul>
                        <li><a href="careless-driving.aspx" title="Careless Driving">Careless Driving</a></li>	
                        <li><a href="dangerous-driving.aspx" title="Dangerous Driving" class="seractive01">Dangerous Driving</a></li>
                        <li><a href="drink-driving.aspx" title="Drink Driving">Drink Driving</a></li>
                        </ul>
                    </li>
                 
                                
                              
                        </ul>
					</div>
                    <!-- End links -->

                    <!-- Start Tabs -->
                    <div style="display:none;">
                        <uc3:trustview ID ="trut1" runat ="server" /></div>

                    <!-- End Tabs -->

                    <!-- Start links -->
                        
                    <!-- End links -->
                    <div class="links">
                    <h2>Contact Us</h2>
         

            <p>
            <input id="txt_Name" name="" type="text" placeholder="Name" class="form-control">
               
            </p>
            <p><input id="txt_Email" type="text" placeholder="Email Address" class="form-control">
               
            </p>
                            <p>
                                <input id="txt_Mobile" type="text" placeholder="Phone" class="form-control">
                                  
                            </p>
                    <p><textarea id="txt_Message" placeholder="Message" class="form-control"></textarea>
                          
                    </p>
            <p>
            </p>
            <p>
                    
            <input id="btnSubmit" type="button"  value="Submit" class="btn btn-default pull-right"/>
            </p>
               
               
            
         
</div>

                </div>
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
                    <li><a href="employment.aspx" title="Employment">Employment</a></li>								
					<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
                    <li><a href="driving-difence.aspx" title="Driving Difence" class="seractive">Driving Difence</a></li>                    

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
                             
                            <%-- <span class="col-xs-6 add1">
                            <p> <span class="middle_footer">Branch Office</span>  <br>Middleton Solicitors<br> Floor 4, 19 Old Hall Street Liverpool L3 9JQ</p>
                            <p>+44 (0)151 236 9900,<br> +44 (0)151 227 2883.</p>
                        </span>--%>  
                             
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
                <ul class="pull-right list-unstyled">cs
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
    <script>
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

        $('button').click(function () {
            $.tinyModal({
                title: 'Enquiry Form',
                html: '#mymodal'

            });
        });

        $("#btnSubmit").click(function () {
            var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;

            if ($('#txt_Name').val() == '' || $('#txt_Email').val() == '' || $('#txt_Mobile').val() == '' || $('#txt_Message').val() == '') {
                alert("Please fill all fields...!!!!!!");
            }
            else if (!emailRegex.test($('#txt_Email').val())) {
                alert("Enter valid Email...!!!!!!");
            }
            else {
                var dataToSend = JSON.stringify({
                    'txt_Name': $('#txt_Name').val(),
                    'txt_Email': $('#txt_Email').val(),
                    'txt_Mobile': $('#txt_Mobile').val(),
                    'txt_Message': $('#txt_Message').val(),

                });
                $.ajax({
                    type: "POST",
                    url: "military-law.aspx/SendMail",
                    data: dataToSend,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        if (msg) {
                            $('input:text').val('');
                            $('#txt_Message').val('');
                            alert("Thank you for your Enquiry.");
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

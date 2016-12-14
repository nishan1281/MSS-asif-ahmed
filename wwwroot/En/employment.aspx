<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employment.aspx.cs" Inherits="En_debt_recovery" %>
<%@ Register Src ="~/usercontrol/service_enquiry_popup.ascx" TagName ="popup" TagPrefix ="uc1" %>
<%@ Register Src ="~/usercontrol/Middleton_Newsletter.ascx" TagName ="newsletter" TagPrefix ="uc2" %>
<%@ Register Src ="~/usercontrol/Middleton_Trust_Law_View.ascx" TagName ="trustview" TagPrefix ="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">

         <title>Employment – Middleton Solicitors UK</title>
         
          <meta name="description" content="We offer a business and commercial debt recovery service to the businesses in liverpool UK. Our commercial debt recovery solicitors team acts quickly and efficiently to recover your Debt." />
    <meta name="keywords" content="debt recovery lawyers liverpool, debt recovery solicitors liverpool ,debt collection solicitors liverpool, debt recovery lawyers UK, debt recovery solicitors UK, debt collection solicitors UK, best debt recovery solicitors in liverpool." />
         
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
<form id="form1" runat ="server" >
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
                <a href="index.aspx" title="Home" >Home</a>
                
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
<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
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
							 <h2>Employment</h2>
                        <p><img src="images/service11.jpg" class="img-responsive" alt=""></p>
						
                        <!-- <b>Area of Law</b><br /><br />
                         <p>Probate & Wills & Trusts</p> -->
						<span class="hd-quite"><B>Employees</B></span><br />
                        <B>Services for Employees</B><br />
						<p align="justify">We can give you prompt and effective advice on any Employment Law related matter, whatever your situation.<br /><br />

I am a specialist in Employment Law with many years experience, and I speciailise in advising and acting for employees in Employment Tribunal cases.<br /><br />

We aim to keep our services affordable, by providing free initial advice and in many cases offering to act under a “no win no fee” agreement. We can also agree to act on hourly rates or fixed fees.<br /><br />

We will give your problem our full attention and will dedicate ourselves to getting you the best outcome possible.<br /><br />

Just phone us on 0151 709 5816 and I will normally be able to speak to you straight away. If not, I will return your call the same day.<br /><br /><br />
                       </p>
					   <!-- <p>Robert Singleton</p>
                        <b>Narrative</b><br /><br />
                        <p>Headed by Robert Singleton, the entire Private Client Team have the necessary training and experience to advise you from start to finish.</p> -->
						
						
                        <span class="hd-quite"><b>Employers</b></span><br />
						<b>Services for Employers</b><br />
                        <p align="justify">We can give you prompt and effective advice on any Employment Law related matter, whatever your situation.<br><br>I am a specialist in Employment Law with many years experience, and have a particular focus on advising and acting for small and medium sized enterprises.  <br><br>We are dedicated to providing your with First Class and cost effective advice and representation, remaining sensitive to your wider business objectives.</p>
						<br/>
						                   
					   <span class="hd-quite"><b>Free Seminars</b></span><br />
					   <b>For a consultation</b><br />
                       <p>Just phone us on <span class="call_on">0151 236 5599</span> and I will normally be able to speak to you straight away. If not, I will return your call the same day. We can arrange a meeting either at our offices or (subject to your location) at your place of business.</p>
                       
                    
                       

						<p>
                    <div class="wrap">



</div>
                    </p>
                    
                    
                    
                    </div>
                </div>
                <div class="col-sm-3 pull-right">
                    <div class="categories">

                        <!-- Start links -->
                        <div class="links">
                            <h2>Services</h2>
    
                            <ul class="list-unstyled">
                              <li><a href="commercial-law.aspx" title="Commercial Law" >Commercial Law</a></li>
                        <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                        <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>	
                    	<li><a href="personal-injury-claim.aspx" title="Personal Injury"  >Personal Injury Claims</a></li>
                        <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance " >Recovering Payment Protection Insurance </a></li>
                        <li><a href="sports-law.aspx" title="Sports Law"  >Sports Law</a></li>         
                        <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>          
                        <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
						<li><a href="employment.aspx" class="seractive01" title="Employment">Employment</a></li>								
						<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
                         <li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li>
                            </ul>
						</div>
                        <!-- End links -->

                        <!-- Start Tabs -->
                        <uc3:trustview ID="trust1" runat ="server" />
                        <!-- End Tabs -->

                        <!-- Start links -->
                        <uc2:newsletter ID ="news1" runat ="server" />
                        <!-- End links -->

                      
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
                
                <div class="col-sm-3 footer_li" id="tab_view">
                      <h2>How We Work</h2>
                    <ul class="list-unstyled">
                    	 <li><a href="commercial-law.aspx" title="Commercial Law">Commercial Law</a></li>
                        <li><a href="debt-recovery.aspx" title="Debt Recovery" >Debt Recovery</a></li>
                        <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>	
                    	<li><a href="personal-injury-claim.aspx" title="Personal Injury" >Personal Injury Claims</a></li>
                        <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>
                        <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>         
                        <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>          
                        <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>                           
                        <li><a href="employment.aspx" class="seractive" title="Employment">Employment</a></li>								
						<li><a href="housing_disrepair.aspx" title="Housing Disrepair">Housing Disrepair</a></li>
                          <li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li>
						<li><a href ="faq.aspx" title ="FAQ">FAQ</a></li></ul> 
					
                </div>
                
                <div class="col-sm-3 footer_add footer_middle" id="tab_view">
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
                        
                         <li><a href="mailto:reception@middletonsolicitors.co.uk" title="Click here to Mail"><i class="fa fa-envelope">  </i>reception@middletonsolicitors.co.uk</a></li>
                         
                     
                        <li><a href="contact-us.aspx" title ="Click to see map"><span><i class="fa fa-map-marker">  </i> Click to see map</span></a></li>
                        <li>Middleton Solicitors is regulated by the Solicitors Regulation Authority | SRA Identification Number: 468726</li>
					</ul>
                </div>
                
                
                
                
                       <div class="col-sm-3 images footer_last" id="tab_view">
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

  </script>
  <!-------Enquiry form Start------> 
   </form>
</body>

</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="family-law.aspx.cs" Inherits="En_family_law" %>
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

       <title>Personal and Family Law Solicitors Liverpool UK | Best family Lawyers UK- Middleton Solicitors</title>
       
        <meta name="description" content="Middleton Solicitors, UK's best family law firm having dedicated team of solicitors in liverpool, offering a full range of family law services and work effortlessly to find the right solution for your issue." />
    <meta name="keywords" content="Family law firm in liverpool, Family law firm UK, Family law firm London, family solicitors liverpool, family solicitors UK, best solicitors in liverpool" />
    
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
        
        
        <a class="navbar-brand" href="index.aspx"><img src="images/logo.gif" title="Back To Home"></a>
        
        


    <div id="menu1 grid_left" class="menu_container green full_width grid_menu">
        <label for="hidden_menu_collapser" class="mobile_collapser">Menu</label> <!-- Mobile menu title -->
        <input id="hidden_menu_collapser" type="checkbox">
        <ul>
            <li>
                <a href="index.aspx" title="Home">Home</a>
                
            </li>
            <li>
                <a href="about-us.aspx" title="About Us">About Us</a>
                
            </li >
            <li>
                <a href="#" title="Services"  class="active1">Services</a>
                <div class="menu_dropdown_block full_width">
                    <div class="md-container">
                        <div class="column span4 bordered">
                            <div class="content">
                                <h2 class="menuh">Specialist Areas</h2>
                               
                                <ul>
                         	   <li><a href="personal-injury-claim.aspx" title="Personal Injury">Personal Injury Claims</a></li>
                               <li><a href="commercial-law.aspx" title="Commercial Litigation" >Commercial Litigation</a></li>
                                 <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>    
                                 <li><a href="family-law.aspx" title="Family Law" class="seractive">Family Law</a></li>
                                <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance ">Recovering Payment Protection Insurance </a></li>					    
                       </ul>
                       	
                              

                            </div>
                        </div>
                        
                        <div class="column span4 bordered service01">
                            <div class="content">
                                <!--<h2>Column #3</h2>-->
                              <ul>
                                <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts">Wills, Probate and Trusts</a></li>
                                 <li><a href="commercial-and-residential-leases.aspx" title="Commercial and Residential Leases">Commercial and Residential Leases</a></li>								
                                 <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                                 <li><a href="consignment.aspx" title="Consignment"> Consignment</a></li>
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
                <a href="enquiry.aspx" title="Enquiry">Enquiry</a>
                
            </li>
             <li> <a href="testimonials.aspx" title="Testimonials">Testimonials</a></li>
            <li >
                <a href="contact-us.aspx" style="border-right:none; box-shadow:none;" title="Contact Us"> Contact Us</a>
                <div class="menu_dropdown_block full_width">
                    <div class="md-container">
                        <div class="column span60per bordered">
                            <div class="content">
                                <h1 class="menuh">Our locations</h1>
                                <div class="overflow">
                                    <iframe width="580" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.co.in/maps/ms?msa=0&amp;msid=211631604737733505467.0004feb2367e4cf60be65&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;iwloc=0004feb2368b8f4346a3b&amp;ll=53.409687,-2.984366&amp;spn=0,0&amp;output=embed"></iframe><br /><small>View <a href="https://www.google.co.in/maps/ms?msa=0&amp;msid=211631604737733505467.0004feb2367e4cf60be65&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;iwloc=0004feb2368b8f4346a3b&amp;ll=53.409687,-2.984366&amp;spn=0,0&amp;source=embed" style="color:#0000FF;text-align:left">Middletons Solicitors</a> in a larger map</small>
                                </div>
                                <!--<p class="small center">
                                <br><br>
                                Los Angeles, CA 90009
                                </p>-->
                            </div>
                        </div>
                        
                        
                        <div class="column span4 bordered ">
                            <div class="content">
                                <h2 class="menuh">Granite House</h2>
                                <ul class="add">	 
                        		 <li>8/ 10 Stanley Street</li>        
  							    <li>Liverpool</li>
                                <li>L1 6AF	</li>
                                <li>Tel: +44 (0)151 236 5599</li>
                                 <li>Fax: +44 (0)151 236 9749</li>
                         </ul>
                            </div>
                           	 	
	 	
 	
 	 	 
	 	
	 	
                        </div>
                        
                      <%--  <div class="column span4 bordered "> 
                            <div class="content">
                               <h2 class="menuh">Middleton Solicitors</h2>
                                <ul  class="add">	 
                        		 <li>Floor 4, 19 Old Hall Street</li>        
  							    <li>Liverpool</li>
                                <li>L3 9JQ</li>
                                <li>Tel: +44 (0)151 236 9900</li>
                                 <li>Fax: +44 (0)151 227 2883</li>
                         </ul>
                            </div>
                        </div>--%>
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
							 <h2>Family Law</h2>
                        <p><img src="images/service7.jpg" class="img-responsive" alt=""></p>
                      <p>Middleton Solicitors have a dedicated team to deal with all sensitive matters relating to Family Law. </p>
                     <div class="clearfix"></div>

                       <ul class="service_li"><li>We offer the following services:</li>
                            <li>Divorces</li>
                            <li>Separation Agreements</li>
                            <li>Ancillary Relief Matters</li>						  
                            <li>Contact Applications </li>
                            <li>Parental Reconciliation Applications</li>
                            <li> Non-Molestation Applications</li>
           </ul> 
                      
                      <p>The fees for each service are flexible and vary accordingly.</p>
                      
              
                      <p>Please use the form below to contact us and we will call you straight back, or you can call us on<span class="call_on"> 0151 236 5599</span> </p> 

						<p>
                      <div class="wrap">
<uc1:popup ID="popup1" runat ="server" />


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
                    	 <li><a href="personal-injury-claim.aspx" title="Personal Injury">Personal Injury Claims</a></li>
                                <li><a href="commercial-law.aspx" title="Commercial Law">Commercial Law</a></li>
                                 <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>    
                                 <li><a href="family-law.aspx" title="Family Law" class ="seractive01">Family Law</a></li>
                                <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>						
                                <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
                                 <li><a href="commercial-and-residential-leases.aspx" title="Commercial and Residential Leases">Commercial and Residential Leases</a></li>								
                                 <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                                 <li><a href="consignment.aspx" title="Consignment"> Consignment</a></li>	
                                <li><a href="driving-difence.aspx" title="Driving Difence">Driving Difence</a></li>
					</ul>
						</div>
                        <!-- End links -->

                        <!-- Start Tabs -->
                            <uc3:trustview ID ="trust1" runat ="server" />
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
                    <p class="justify">Middleton Solicitors was established in 2004 by Alan Middleton. Mr. Middleton has over 30 years' experience as a solicitor and has an enviable reputation as a top class lawyer and negotiator. The firm has expanded rapidly and now has two offices in Liverpool City Centre that employs over 40 staff; it retains   a friendly and common-sense approach to our clients and their legal needs. </p>
                    
                      
                    <a href="about-us.aspx" class="btn btn-default" title ="View More">View More</a>
                </div>
                
                <div class="col-sm-3 footer_li" id="tab_view">
                      <h2>How We Work</h2>
                    <ul class="list-unstyled">
                    	 <li><a href="personal-injury-claim.aspx" title="Personal Injury" >Personal Injury Claims</a></li>
                               <li><a href="commercial-law.aspx" title="Commercial law" >Commercial Law</a></li>
                                 <li><a href="sports-law.aspx" title="Sports Law" >Sports Law</a></li>    
                                 <li><a href="family-law.aspx" title="Family Law" class="seractive">Family Law</a></li>
                                <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>						
                                <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
                                 <li><a href="commercial-and-residential-leases.aspx" title="Commercial and Residential Leases">Commercial and Residential Leases</a></li>								
                                 <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                                 <li><a href="consignment.aspx" title="Consignment"> Consignment</a></li>
                        <li><a href="driving-difence.aspx" title="Driving Difence">Driving Difence</a></li>	
					</ul> 
					
                </div>
                
                <div class="col-sm-3 footer_add footer_middle" id="tab_view">
                    <h2>Contact Details</h2>
                    <ul class="list-unstyled">
          			
                      <li>
                   		 <span class="col-xs-6 add1">
                             <p> <span class="middle_footer">Head Office</span> <br> Middleton Solicitors</br><br>Granite House</br><br>8/ 10 Stanley Street</br><br>Liverpool</br><br>L1 6AF </br></p> 
                              <p>+44 (0)151 236 5599,<br> +44 (0)151 236 9749.</p>
                             </span>
                             
                             <%-- <span class="col-xs-6 add1">
                               <p> <span class="middle_footer">Branch Office</span>  <br>Middleton Solicitors<br> Floor 4, 19 Old Hall Street Liverpool L3 9JQ</p>
                               <p>+44 (0)151 236 9900,<br> +44 (0)151 227 2883.</p>
                            </span>  --%>
                             
                          </li>
                        
                         <li><a href="mailto:reception@middletonsolicitors.co.uk" title ="Click here to Mail"><i class="fa fa-envelope">  </i>reception@middletonsolicitors.co.uk</a></li>
                         
                     
                        <li><a href="contact-us.aspx" title ="Click to see Map"><span><i class="fa fa-map-marker">  </i> Click to see map</span></a></li>
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
                    	<li><img src="images/middleton 1.png" title="Middleton Solicitors" width="50" height="50"></li>
                        <li><img src="images/middleton 2.png" title="Middleton Solicitors" width="50" height="50"></li>
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
  
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/scrolld.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>  <!-- Bootstrap core JavaScript -->
  
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

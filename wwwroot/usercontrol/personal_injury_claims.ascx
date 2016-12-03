<%@ Control Language="C#" AutoEventWireup="true" CodeFile="personal_injury_claims.ascx.cs" Inherits="usercontrol_personal_injury_claims" %>
<%@ Register Src ="~/usercontrol/service_enquiry_popup.ascx" TagName ="popup" TagPrefix ="uc1" %>

 <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">

        <title>::middleton solicitors::</title>
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




    <!-- start Container -->
    <section id="container">

        <!-- start breadcrumb -->
        
        <!-- end breadcrumb -->

		<div class="container">
			<div class="row">
                <div class="col-sm-8">
                    <div class="sideArea">
							 <h2>Personal Injury Claims</h2>
                        <p><img src="images/service2.jpg" class="img-responsive" alt=""></p>
                      <p>Middleton Solicitors has a specialist team working on personal injury claims. We handle all types of personal injury cases, so whether it's a trip or fall, accident in the workplace or a motor vehicle collision please call us to discuss your requirements. We have thousands of satisfied clients and we would like you to be one of those.</p>
                     <div class="clearfix"></div>

                        <ul class="service_li">
                        	<li> We offer the following services:</li>
                            <li>Road Traffic Accidents</li>
                            <li>Slips and trips</li>
                            <li>Accidents at work</li>
                            <li>Employer liability</li>
                            <li>Public liability</li>
                            <li>Occupiers’ liability</li>
                	 </ul> 
                      
                      <p>Middleton Solicitors are here to help you; we can arrange everything to help get your life back on track after an injury, from arranging car hire whilst your car is being repaired to physiotherapy which will aid your recovery.</p> 
                      
                      <p>Please use the form below to contact us and we will call you straight back, or you can call us on  <span class="call_on">0151 236 9900</span></p> 

						<p>
                       <div class="wrap">
<uc1:popup ID ="popup1" runat ="server" />


<button type="button" class="fancybox fancybox.iframe a_demo_four item" style="border:none;">Enquiry</button>
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
                                <li><a href="personal_injury_claims.html" title="Personal Injury" class="seractive01">Personal Injury Claims</a></li>
                                <li><a href="commercial_law.html" title="commercial law" >Commercial Litigation</a></li>
                                 <li><a href="sports_law.html" title="Sports Law">Sports Law</a></li>    
                                 <li><a href="family_law.html" title="Family Law">Family Law</a></li>
                                <li><a href="recovering.html" title="Recovering Payment Protection Insurance "  >Recovering Payment Protection Insurance </a></li>						<li><a href="wills_probate_trusts.html" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li>
                                 <li><a href="residential_leases.html" title="Residential and Commercial Property">Residential and Commercial Property</a></li>								<li><a href="debt_recovery.html" title="Debt Recovery">Debt Recovery</a></li>
                                 <li><a href="consignment.html" title="Consignment"> Consignment</a></li>
                                  <li><a href="driving-difence.aspx" title="Motor Offences">Motor Offences</a></li>  	
                            </ul> 
						</div>
                        <!-- End links -->

                        <!-- Start Tabs -->
                        <div class="tabs">

	                        <h2>Speaker Corner Law</h2>

                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#one" data-toggle="tab">Law</a></li>
                                <li><a href="#two" data-toggle="tab">Trust</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="one">
                                    <ul class="list-unstyled">
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="images/l1.jpg" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#">Family Law : Middleton Solicitors have a dedicated team...,</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="images/l2.jpg" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#">Sports Law : We here at Middleton Solicitors have a specialist team ...,</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-pane" id="two">
                                    <ul class="list-unstyled">
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="images/l3.jpg" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#">Solicitors have a specialist team dealing with all aspects of Sports Law</a>
                                            </div>
                                            
                                        </li>
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="images/l4.jpg" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#">Solicitors have a specialist team dealing with all aspects of Sports Law</a>
                                            </div>
                                            
                                        </li>
                                       
                                        </li>
                                    </ul>
                                </div>
                            </div>
						</div>
                        <!-- End Tabs -->

                        <!-- Start links -->
                        <div class="links">
                            <h2>Newsletter</h2>
                            <form action="#">

                                <p><input type="text" placeholder="Name" class="form-control"></p>
                                <p><input type="text" placeholder="E-mail" class="form-control"></p>
                                <p><input type="submit" class="btn btn-default pull-right"></p>
    
                            </form>
						</div>
                        <!-- End links -->

                        <!-- Start links -->
                        <!--<div class="links">
                            <h2>Lorem Ipsum</h2>
    
                            <ul class="list-unstyled">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Left Sidebar</a></li>
                                <li><a href="#">Right Sidebar</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Typogarphy</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
						</div>-->
                        <!-- End links -->

                        <!-- Start tags -->
                        <!--<div class="tags">
        
                            <h2>Tags</h2>
        
                            <ul>
                                <li><a href="#">Lorem</a></li>
                                <li><a href="#">Consectetuer </a></li>
                                <li><a href="#">Adipiscing elit,</a></li>
                                <li><a href="#">Sed diam </a></li>
                                <li><a href="#">Nonummy nibh </a></li>
                                <li><a href="#">Euismod tincidunt </a></li>
                                <li><a href="#">Ut laoreet </a></li>
                                <li><a href="#">Lorem</a></li>
                                <li><a href="#">Consectetuer </a></li>
                                <li><a href="#">Adipiscing elit,</a></li>
                                <li><a href="#">Sed diam </a></li>
                                <li><a href="#">Nonummy nibh </a></li>
                                <li><a href="#">Euismod tincidunt </a></li>
                                <li><a href="#">Ut laoreet </a></li>
                            </ul>
                        
                        </div>-->
                        <!-- end tags -->

                    </div>
				</div>
            </div>
		</div>

    </section>
    <!-- end Container -->



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
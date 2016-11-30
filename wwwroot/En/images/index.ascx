<%@ Control Language="C#" AutoEventWireup="true" CodeFile="index.ascx.cs" Inherits="usercontrol_index" %>
 <!-- start banner -->
	<div class="bannerArea">
        <div class="flexslider">
            <ul class="slides list-unstyled">
            
            	 <asp:Repeater ID="outerRep" runat="server" OnItemDataBound="outerRep_ItemDataBound">
                <ItemTemplate>     
            	<li>
                    <div class="jumbotron">
                        <h1><%#Eval("Banner_Name")%></h1>
                        <ul class="list-unstyled">
                            <li><a class="alert-link banner_li" href="#" style=" color:white;">We offer the following services</a></li>
                            <asp:HiddenField runat="server" ID="filenameid" Value='<%# Eval("Id") %>'/>
                                <asp:Repeater ID="innerRep" runat="server" ><ItemTemplate>
                            <li><a class="alert-link" href="#" title ="<%#Eval("Menu") %>"> <%#Eval("Menu") %> </a></li>
                              </ItemTemplate></asp:Repeater> 
                           
                        </ul>
                    </div>
                       <img src="../<%#Eval("Banner_Image")%>" alt="" title="<%#Eval("Banner_Name") %>" style="cursor :pointer ;" >
                </li>
                
                           </ItemTemplate>
            </asp:Repeater>  
          
            </ul>
        </div>
    </div>
    <!-- start banner -->


        <!-- start Container -->
    <section id="container">

        <!-- start text Area -->
        
                    </div>
                    
            	</div>
            </div>
        </article>
	    <!-- end text Area -->

        <!-- start about area -->
        <section class="aboutArea text-center">
            <div class="container">   

                <div class="row">
                    <div class="col-sm-12">

                        <h2>Our <strong>Services</strong> </h2>
                     <!--   <hr>
                        <p>Our Services</p>-->

                    </div>
                </div>
                <div class="row">
    
                    <div class="col-sm-3 home_lines mobileview middle ">
                       <span class="con_left"> 
                        <a href="../En/personal-injury-claim.aspx"  class="home_icon img-circle home_icon1 iphone02">
                            <span> <img src="images/s1.png" title="Presonal Injury"></span>
                        </a>
                       </span> 
                       
                        <span class="con_right">
                            <h3>Presonal Injury</h3>
                            <hr>
                            <p>Middleton Solicitors have a specialist team working on personal injury claims. We handle all ..,</p>
                       </span>   
                    </div>
                    <div class="col-sm-3 mobileview middle">
                       <span class="con_left">  
                        <a href="../En/commercial-law.aspx"  class="home_icon home_icon1 iphone02">
                             <span> <img src="images/s2.png" title="Commercial Litigation"></span>
                        </a>
                       </span>
                        <span class="con_right"> 
                        <h3>Commercial Litigation</h3>
                        <hr>
                        <p>Middleton Solicitors have extensive experience and expertise in all aspects of commercial law ..,</p>
                       </span>   
                    </div>
                    
                    <div class="col-sm-3 mobileview middle">
                   		<span class="con_left">  
                        <a href="../En/sports-law.aspx"  class="home_icon home_icon1 iphone02">
                            <span> <img src="images/s3.png" title="Sports Law"></span>
                        </a>
                      </span> 
                      <span class="con_right"> 
                        <h3>Sports Law</h3>
                        <hr>
                        <p>We here at Middleton Solicitors have a specialist team dealing with all ..,</p>  
                        </span>
                    </div>
                    
                    <div class="col-sm-3 mobileview middle">
                      <span class="con_left">  
                        <a href="../En/family-law.aspx"  class="home_icon home_icon1 iphone02">
                            <span> <img src="images/s4.png" title="Family Law"></span>
                        </a>
                      </span>
                       <span class="con_right">
                        <h3>Family Law</h3>
                        <hr>
                        <p>Middleton Solicitors have a dedicated team to deal with all sensitive matters ..,</p>  
                       </span> 
                    </div>
                   
                </div>

            </div>
        </section>
        <!-- end about area -->

	   
        <!-- start venue area -->
        <section id="venueArea">
            <div class="container">   
                <div class="row">
                	<div class="col-sm-12 text-center">
                        <h1>Specialist Areas </h1>
                      <!--  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, </p>-->
	        
					</div>
                    <div class="col-sm-4 special">
                        <div class="col-sm-2 pull-left areas medium_screen">
							<a href="../En/recovering-payment-protection-insurance.aspx" class="img-circle"><img src="images/f1.png" alt="" title="Insurance"></a>
						</div>
                        <div class="col-sm-9 pull-right medium_screen01 iphone01 iphone05">
                            <p>At Middleton Solicitors, we are committed to recovering the repayment,<i class="fa fa fa-quote-right"></i></p>
                            <h4>PPI<br><a href="../En/recovering-payment-protection-insurance.aspx">View More</a></h4>
						</div>
                    </div>
                    <div class="col-sm-4 special">
                        <div class="col-sm-2 pull-left areas medium_screen">
							<a href="../En/wills-probate-trusts.aspx"><img class="img-circle" src="images/f2.png" alt="" title="Trusts"></a>
						</div>
                        <div class="col-sm-9 pull-right medium_screen01 iphone01 iphone05">
                            <p>We at Middleton Solicitors have a specialist team working on both domestic,<i class="fa fa fa-quote-right"></i></p>
                            <h4>Wills, Probate and Trusts <br><a href="../En/wills-probate-trusts.aspx">View More</a></h4>
						</div>
                    </div>
                    <div class="col-sm-4 special">
                        <div class="col-sm-2 pull-left areas medium_screen">
							<a href="../En/commercial-and-residential-leases.aspx"><img class="img-circle" src="images/f3.png" alt="" title="Residential Leases"></a>
						</div>
                        <div class="col-sm-9 pull-right medium_screen01 iphone01 iphone05">
                            <p>Middleton Solicitors have a dedicated team to deal with all sensitive matters relating ,<i class="fa fa fa-quote-right"></i></p>
                            <h4>Residential and Commercial Property<br><a href="../En/commercial-and-residential-leases.aspx"> View More</a></h4>
						</div>
                    </div>
                    <div class="col-sm-4 special">
                        <div class="col-sm-2 pull-left areas medium_screen">
							<a href="../En/debt-recovery.aspx"><img class="img-circle" src="images/f4.png" alt="" title="Dept Recovery"></a>
						</div>
                        <div class="col-sm-9 pull-right medium_screen01 iphone01">
                            <p>At Middleton Solicitors, we are committed to recovering the repayment Conceptually, civil law proceeds ,<i class="fa fa fa-quote-right"></i></p>
                            <h4>Debt Recovery <br><a href="../En/debt-recovery.aspx"> View More</a></h4>
						</div>
                    </div>
                    
   				  <div class="col-sm-4 special">
                        <div class="col-sm-2 pull-left areas last_screen medium_screen">
							<a href="../En/consignment.aspx" ><img  src="images/f5.png" class="img-circle"alt="" title="Consignment"></a>
						</div>
                        <div class="col-sm-9 pull-right last_screen01 medium_screen01 iphone01 iphone05">
                            <p>Consignment sale is an arrangement in trade in which a seller or the consignor sends goods to a buyer ,<i class="fa fa fa-quote-right"></i></p>
                            <h4>Consignment<br> <a href="../En/consignment.aspx"> View More </a></h4>
						</div>
                    </div>
                    
                  
         		<div class="col-sm-4 special test">
                       <iframe src="testmonials/index.html" frameborder="0" width="100%" scrolling="no" style="height: 148px;
margin-bottom: 11%; border-bottom:1px solid #dddddd;"></iframe>
                    </div>
                    
                </div>
            </div>
        </section>

        <!-- end venue area -->


    </section>
    <!-- end Container -->
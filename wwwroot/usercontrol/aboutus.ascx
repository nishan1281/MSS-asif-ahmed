<%@ Control Language="C#" AutoEventWireup="true" CodeFile="aboutus.ascx.cs" Inherits="usercontrol_aboutus" %>
<%@ Register Src ="~/usercontrol/aboutus_ourteamwork.ascx" TagName ="ourteamwork" TagPrefix ="uc1" %>
    <!-- start Container -->
    <section id="container">

        <!-- start side Area -->
        <article id="sideArea">
            <div class="container">
                <div class="row">
                  
                    
                    <aside class="col-md-9"><br /><br />
                          <div class="about_h2">
                    	<h2>About Us </h2>
                        <hr>
                    </div>
                        <div class="clearfix"></div>
                        <p class="justify">Middleton Solicitors is based in Stanley Street, Liverpool City Centre. It was established in 2004 by Alan Middleton who has over 30 years' experience as a solicitor with an enviable reputation as a top class lawyer and negotiator. The firm retains a friendly and common sense approach to all clients and Legal Issues.</p>
<p class="justify">We have over 30 staff operating in modern offices equipped with boardrooms and meeting rooms.</p>
<p class="justify">Middleton Solicitors can assist with all legal issues for private and commercial clients. The firm has expertise in Personal Injury, Sports Law, Litigation and Debt Collection together with Private Client departments for Wills, Probate and Conveyancing.
Please email with any enquires; online quotations are available for sales and purchases of residential properties. </p>
                        <img src="../En/images/about-page.jpg" />
                   
                    </aside>
                    <aside class="col-md-3 abt categories">
                       <div class="links">
                            <h2>Services</h2>
    
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
                          <li><a href="driving-difence.aspx" title="Motor Offences">Motor Offences</a></li>                                                                     
					</ul>
						</div>
                    </aside>
                    <style> 

       @media only screen and (max-width:750px) {
        aside.col-md-3.abt.categories { padding:0 15px;}
        }
                    </style>
                </div>
            </div>
        </article>
        <!-- end side Area -->
        <uc1:ourteamwork ID="ourteamwork1" runat ="server" />
    </section>
    <!-- end Container -->
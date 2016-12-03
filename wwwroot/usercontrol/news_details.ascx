<%@ Control Language="C#" AutoEventWireup="true" CodeFile="news_details.ascx.cs" Inherits="usercontrol_news_details" %>
<script type="text/javascript">
    window.onload = function () {
        debugger;
        var img1 = document.getElementById('img1');
        var img2 = document.getElementById('img2');
        var img3 = document.getElementById('img3');

        if (img1.src.indexOf(".jpg") == -1 && img1.src.indexOf(".png") == -1 && img1.src.indexOf(".jpeg") == -1 && img1.src.indexOf(".gif") == -1 && img1.src.indexOf(".tiff") == -1)
            img1.style.visibility = 'hidden';
        else
            img1.style.visibility = 'visible';
        if (img2.src.indexOf(".jpg") == -1 && img2.src.indexOf(".png") == -1 && img2.src.indexOf(".jpeg") == -1 && img2.src.indexOf(".gif") == -1 && img2.src.indexOf(".tiff") == -1)
            img2.style.visibility = 'hidden';
        else
            img1.style.visibility = 'visible';
        if (img3.src.indexOf(".jpg") == -1 && img3.src.indexOf(".png") == -1 && img3.src.indexOf(".jpeg") == -1 && img3.src.indexOf(".gif") == -1 && img3.src.indexOf(".tiff") == -1)
            img3.style.visibility = 'hidden';
        else
            img1.style.visibility = 'visible';

    }
</script>
<section id="container">

        <!-- start side Area -->

        <article id="sideArea">
            <div class="container">
                <div class="row">
                  
                  <asp:Repeater ID="rptr_news" runat="server">
                      <ItemTemplate>
                    <aside class="col-md-9 col-sm-12 col-xs-12"><br /><br />
                          <div class="about_h2">
                    	<h2><%#Eval("Title")%></h2>
                        <hr>
                    </div>
                        <div class="clearfix"></div>
                        <p class="justify"><%#Eval("Description")%></p>

                        <img id="img1" src="../<%#Eval("Image_Path1")%>" class="img-res-im1"  />
                        <img id="img2" src='../<%#Eval("Image_Path2")%>' class="img-res-im1" />
                        <img id="img3" src='../<%#Eval("Image_Path3")%>' class="img-res-im1" />
                    </aside>
                          </ItemTemplate>
                    </asp:Repeater>



                    <aside class="col-md-3 abt categories">
                       <div class="links">
                            <h2>Services</h2>
    
                            <ul class="list-unstyled">
                    	<li><a href="commercial-law.aspx" title="Commercial Law" >Commercial Law</a></li>
                        <li><a href="debt-recovery.aspx" title="Debt Recovery">Debt Recovery</a></li>
                        <li><a href="military-law.aspx" title="Military Law">Military Law</a></li>	
                    	<li><a href="personal-injury-claim.aspx" title="Personal Injury"  >Personal Injury Claims</a></li>
                        <li><a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance " >Recovering Payment Protection Insurance </a></li>
                        <li><a href="sports-law.aspx" title="Sports Law">Sports Law</a></li>         
                        <li><a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">Residential and Commercial Property</a></li>          
                        <li><a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts" >Wills, Probate and Trusts</a></li> 
                                  <li><a href="driving-difence.aspx" title="Motor Offences">Motor Offences Defence</a></li>  
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
        
    </section>
    <!-- end Container -->
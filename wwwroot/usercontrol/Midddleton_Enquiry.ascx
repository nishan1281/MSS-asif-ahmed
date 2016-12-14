<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Midddleton_Enquiry.ascx.cs" Inherits="UserControls_Midddleton_Enquiry" %>
<style type="text/css">
.ac{    width: 20%!important;
    float: left!important;
    padding: 0% 2%!important;
    text-align: left!important;}

.enquiry_box{height: 36px;
    border-radius: 4px;
    border: 1px solid #067dba;
    width: 50%;
    /* margin-top: 1%; */
    margin-bottom: 05px;
    float: left;padding: 0 10px;}

.enquiry_box01{height: 106px;
    border-radius: 4px;
    font-size: 14px;
    width: 50%;
    border: 1px solid #067dba;
    margin-top: 1%;
    margin-bottom: 2%;
    padding: 5px 10px;
    float: left;}
.send_mail{width:90px;height: 36px;
border-radius: 4px;
border: 1px solid #067dba;
background:#067dba; color:#fff;
margin-top: 1%;margin-bottom: 2%;}

.send_mail:hover{background:#041c3f;}
    .enquery-div div { width:100%; float:left;
    }

    @media only screen and (max-width:750px) {
        aside.col-md-3.col-sm-12.col-xs-12.abt.categories { padding:0 15px;        }
  
}
</style>
<!-- start venue area -->
        <section id="venueArea">
            <div class="container">   
                <div class="row">
                	<div class="col-md-9 col-sm-12 col-xs-12 text-center">
                        <br /><br />
                         <div class="text-center col-sm-12 about_h2">
                    	<h2>Enquiry</h2>
                        <hr>
                    </div>
                        
                        <div class="wrapper enquery-div">
		                    <form id="contact-form" action="/" method="post">
		
		   <div>
			
				<span class="ac">Name:</span>
					<%--<span class="text_label">Name:</span><br />--%>
					<asp:TextBox ID="txt_Name" runat="server" placeholder="Enter Your Name" class="enquiry_box" ></asp:TextBox> 
					<%--<input placeholder="enter your name" type="text" tabindex="1" required autofocus>--%>
				
			</div>
			<div>
				
					<span class="ac">Email:</span>
					<asp:TextBox ID="txt_Email" runat="server" placeholder="Enter Your E-Mail" class="enquiry_box"  ></asp:TextBox> 
					<%--<input placeholder="enter your email address" type="email" tabindex="2" required>--%>
				
			</div>
			<div>
				
					<span class="ac">Mobile:</span>
					<asp:TextBox ID="txt_Mobile" runat="server" placeholder="Enter Mobile Number" class="enquiry_box"  ></asp:TextBox> 
					<%--<input placeholder="enter your number" type="tel" tabindex="3" required>--%>
				
			</div>
		
			<div>
				
					<span class="ac">Message:</span>
					<%--<textarea placeholder="Include all the details you can" tabindex="5" required style="font-size:16px;"></textarea>--%>
					<asp:TextBox ID="txt_Message" runat="server" placeholder="Enter Your Message" TextMode ="MultiLine"
					 class="enquiry_box01"></asp:TextBox>
				
			</div>
			<div>
			<asp:Button ID="btn_Submit" runat ="server" Text="Send Email" class="send_mail"	onclick="btn_Submit_Click"
			ValidationGroup="Enquiryform" CausesValidation ="true"/>
							<%--<button name="submit" type="submit" id="contact-submit">Send Email</button>--%>
			</div>
		</form>

	                    </div>
    
					</div>
                    <aside class="col-md-3 col-sm-12 col-xs-12 abt categories">
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
                        <li><a href="driving-difence.aspx" title="Driving Defences">Driving Defences</a></li> 
					</ul>
						</div>
                    </aside>

    		    </div>
                    
            
           </div>
            </div>
        </section>
		
		
		
		
		
		

		<!-- /Form -->
		</section>
		</div>
	</div>
    
					</div>
    		    </div>
                    
            
           </div>
            </div>
        </section>
        <!-- end venue area -->
        
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
           ErrorMessage="Enter your Name" ControlToValidate ="txt_Name" ValidationGroup ="Enquiryform">
            </asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
           ErrorMessage="Enter Your Email" ControlToValidate ="txt_Email" ValidationGroup ="Enquiryform">
            </asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                 ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Enquiryform" ControlToValidate="txt_Email" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display ="None">
            </asp:RegularExpressionValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" 
           ErrorMessage="Enter your Mobile Number" ControlToValidate ="txt_Mobile" ValidationGroup ="Enquiryform">
            </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid Phone Number" ValidationGroup="Enquiryform" 
             ControlToValidate="txt_Mobile" ValidationExpression ="^[0-9]+$" Display ="None">
            </asp:RegularExpressionValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" 
           ErrorMessage="Enter your Message" ControlToValidate ="txt_Message" ValidationGroup ="Enquiryform">
            </asp:RequiredFieldValidator>
           <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="Enquiryform"
            ShowMessageBox ="true" ShowSummary ="false"  /> 
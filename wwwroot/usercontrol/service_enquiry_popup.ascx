<%@ Control Language="C#" AutoEventWireup="true" CodeFile="service_enquiry_popup.ascx.cs" Inherits="usercontrol_service_enquiry_popup" %>
<div id="mymodal" style="display:none;">
<div>
<div class="contact-form">
							 
                             
					    	<div>
						    	<span><label>Name</label></span>
						    	<span>
                                <asp:TextBox ID ="txt_Name" runat ="server" placeholder="Enter Your Name" class="form-control"></asp:TextBox>
                                </span>
						    </div>
                            
                            <div>
						    	<span><label>Your-Email</label></span><span>
                                <asp:TextBox ID="txt_Email" runat ="server" placeholder="Enter Your E-Mail" class="form-control"></asp:TextBox>
                                </span>
						    </div>
                            
                            <div>
						    	<span><label>Phone</label></span>
						    	<span>
                                <asp:TextBox ID="txt_Mobile" runat ="server" placeholder="Enter your Mobile" class="form-control"></asp:TextBox>
                                </span>
						    </div>
                            
                            <div>
						    	<span><label>Message</label></span>
                                <asp:TextBox ID="txt_Message" runat ="server" placeholder="Enter Your Message" class="form-control" rows="3"></asp:TextBox>	
						    </div>
                            <br /><br />
                       	 <div>
						    	<span>
                                <asp:ImageButton ID="btn_submit" runat ="server"  ImageUrl ="../En/images/submit.png" ToolTip ="Submit" 
                                CausesValidation="true" ValidationGroup ="Enquiry"/>
                                </span>
                                <span> 
                                <asp:ImageButton ID ="btn_Cancel" runat="server" ImageUrl ="../En/images/cancel.png" ToolTip ="Cancel" /> 
                                </span>	

						    </div>
                            
                           
                            
						
</div>
</div>
</div>
<div>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
           ErrorMessage="Enter your Name" ControlToValidate ="txt_Name" ValidationGroup ="Enquiry">
            </asp:RequiredFieldValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
           ErrorMessage="Enter Your Email" ControlToValidate ="txt_Email" ValidationGroup ="Enquiry">
            </asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                 ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Enquiry" ControlToValidate="txt_Email" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display ="None">
            </asp:RegularExpressionValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" 
           ErrorMessage="Enter your Mobile Number" ControlToValidate ="txt_Mobile" ValidationGroup ="Enquiry">
            </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid Phone Number" ValidationGroup="Enquiry" 
             ControlToValidate="txt_Mobile" ValidationExpression ="^[0-9]+$" Display ="None">
            </asp:RegularExpressionValidator>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" 
           ErrorMessage="Enter your Message" ControlToValidate ="txt_Message" ValidationGroup ="Enquiry">
            </asp:RequiredFieldValidator>
           <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="Enquiry"
            ShowMessageBox ="true" ShowSummary ="false"  /> 
</div>
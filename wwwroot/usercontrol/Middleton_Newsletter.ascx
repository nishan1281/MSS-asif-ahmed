<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Newsletter.ascx.cs" Inherits="UserControls_Middleton_Newsletter" %>

 <!-- Start links -->
<div class="links">
    <h2>Newsletter</h2>
         <form action="#">

               <p>
               <asp:TextBox ID="txt_Name" runat="server" placeholder="Name" class="form-control"></asp:TextBox>
               <p><asp:TextBox ID="txt_Email" runat="server" placeholder="Email" class="form-control"></asp:TextBox></p>
               <p>
              <p>
                   <asp:Button ID="btn_Submit" runat="server" Text="Submit" 
                       class="btn btn-default pull-right" onclick="btn_Submit_Click"
                       ValidationGroup ="Newsletter" CausesValidation ="true"/>
               </p>
               
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
           ErrorMessage="Enter your Name" ControlToValidate ="txt_Name" ValidationGroup ="Newsletter">
            </asp:RequiredFieldValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
           ErrorMessage="Enter your Email Id" ControlToValidate ="txt_Email" ValidationGroup ="Newsletter">
            </asp:RequiredFieldValidator>
            
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                 ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Newsletter" ControlToValidate="txt_Email" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display ="None">
            </asp:RegularExpressionValidator>
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="Newsletter"
            ShowMessageBox ="true" ShowSummary ="false"  />
    
         </form>
</div>
<!-- End links -->      
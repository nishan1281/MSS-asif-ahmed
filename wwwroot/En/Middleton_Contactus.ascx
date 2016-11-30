<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Contactus.ascx.cs" Inherits="UserControls_Middleton_Contactus" %>

 <!-- Start Container -->
    <section id="container">

        <!-- start contact area -->
        <section id="contactArea">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9453.834936054125!2d-2.9236802908054536!3d53.67444918353849!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487b156015d6de05%3A0xd5d65b27469e7807!2sGranite+House!5e0!3m2!1sen!2sin!4v1444769833508" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>

        	<div class="container">
            	<div class="row">

                    <div class="col-sm-6">

                        <h2>Submit Query</h2>

                        <form action="#">

                            <p class="col-sm-6 pull-left">
                                <asp:TextBox ID="txt_Name" runat="server" placeholder="Name" class="form-control"></asp:TextBox>
                            </p>
                            <p class="col-sm-6 pull-right">
                                <asp:TextBox ID="txt_Phone" runat="server" placeholder="Mobile" class="form-control"></asp:TextBox>
                            </p>
                            <p class="col-sm-6 pull-left">
                                <asp:TextBox ID="txt_Email" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                            </p>
                            <p class="col-sm-6 pull-right">
                                <asp:TextBox ID="txt_Subject" runat="server" placeholder="Subject" class="form-control"></asp:TextBox>
                            </p>
                            
                            <aside class="clearfix"></aside>

                                <asp:TextBox ID="txt_Message" runat="server" placeholder="Message.." class="form-control mobile_view" TextMode ="MultiLine" ></asp:TextBox>
                                
                    <asp:Button ID="btn_Send_Message" runat="server" Text="Send" class="send_mail:hover send_mobile" style="width: 90px;height: 36px;border-radius: 4px;border: 1px solid #067dba;background: #067dba;color: #fff;margin-top: 1%;margin-bottom: 2%;" onclick="btn_Send_Message_Click"
                                 ValidationGroup ="Contactus" CausesValidation ="true"></asp:Button>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
           ErrorMessage="Enter your Name" ControlToValidate ="txt_Name" ValidationGroup ="Contactus">
            </asp:RequiredFieldValidator>   
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
           ErrorMessage="Enter Your Mobile Number" ControlToValidate ="txt_Phone" ValidationGroup ="Contactus">
            </asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Invalid Phone Number" ValidationGroup="Contactus" 
             ControlToValidate="txt_Phone" ValidationExpression ="^[0-9]+$" Display ="None">
            </asp:RegularExpressionValidator> 
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" 
           ErrorMessage="Enter Your Email" ControlToValidate ="txt_Email" ValidationGroup ="Contactus">
            </asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                 ErrorMessage="Please Enter Valid Email ID"
                  ValidationGroup="Contactus" ControlToValidate="txt_Email" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display ="None">
            </asp:RegularExpressionValidator>                    
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" 
           ErrorMessage="Enter the Subject" ControlToValidate ="txt_Subject" ValidationGroup ="Contactus">
            </asp:RequiredFieldValidator>
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="Contactus"
            ShowMessageBox ="true" ShowSummary ="false"  />  
               
                        </form>

                    </div>
                    <div class="col-sm-6">

                        <h2>Address</h2>

						<p>We at Middleton Solicitors resolutely believe that our staff are the most important asset we have. Therefore we seek to offer new staff members the chance to join our professional team and develop their skills to ensure we can offer all clients a professional standard of service.</p>

                        <ul class="list-unstyled">
                            <li><a href="mailto:reception@middletonsolicitors.co.uk"><i class="fa fa-envelope">  </i> reception@middletonsolicitors.co.uk</a></li>
                     
                            <li><i class="fa fa-phone">  </i>  +44 (0)151 236 5599</li>
                            <li> <address><i class="fa fa-home"> </i> Granite House,8/ 10 Stanley Street,Liverpool,L1 6AF</address></li>


                        </ul>

                    </div>

				</div>
			</div>                    
        </section>
        <!-- end contact area -->

<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="team-details.aspx.cs" Inherits="En_team_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- start Container -->
    <section id="container">
       
        <!-- start venue area -->
        
       <asp:Repeater ID ="out_rep" runat="server" >
       <ItemTemplate>
        <section id="venueArea">
            <div class="container">   
                <div class="row">
                	 <div class="text-center col-sm-12 about_h2">
                    	<h2><%#Eval("Title") %></h2>
                            
                    </div>
                
                
<div class="row">
     <div class=" col-lg-12">                
         <div class="col-lg-6"> 
           	    <div class="col-sm-4 team_work team">                       
                        <div class="col-sm-2 pull-left client_img" style="width:100%;" >
							<a href="#"><img class="img-circle" src="../<%#Eval("Image") %>" title="Responsive Design" alt=""></a>
                            <h2> <%#Eval("Name") %></h2>
						</div>
                        <div class="col-sm-9 pull-right mail_id">
                          <table>	
		<tbody>
		<tr>
			<td>About</td>
			<td><%#Eval("Description") %></td>			
		</tr>
        <tr>
			<td>Specialisations</td>
			<td><%#Eval("Short_Desc") %></td>			
		</tr>
        <tr>
			<td>Contact Details</td>
			<td><address><%#Eval("Contact") %></address></td>			
		</tr> 
		</tbody>
	</table> 
            		</div>
                    </div>
         </div>
                </div>
          	   </div>
                
           </div>
            </div>
        </section>
        </ItemTemplate>
        </asp:Repeater> 
        <!-- end venue area -->


    </section>
    <!-- end Container -->
    
    <asp:Label ID="getid" runat ="server" Visible ="false"></asp:Label>
</asp:Content>


<%@ Control Language="C#" AutoEventWireup="true" CodeFile="aboutus_ourteamwork.ascx.cs" Inherits="usercontrol_aboutus_ourteamwork" %>


        <!-- start venue area -->
        <section id="venueArea">
            <div class="container">   
                <div class="row">
                	<div class="col-sm-12 text-center">
                        <h1>Our Team</h1>
                    </div>
           <asp:Repeater ID="Rep_Our_Team_Work" runat ="server" 
                        onitemcommand="Rep_Our_Team_Work_ItemCommand" >
           <ItemTemplate >
           
                    <div class="col-sm-4">
                        <div class="col-sm-2 pull-left">
							<a href="#"><img class="img-circle" src="../<%#Eval("Image") %>" title="<%#Eval("Name")%>" alt=""></a>
						</div>
                        <div class="col-sm-9 pull-right">
                            <p class="our_teamp"><%#Eval("Short_Desc")%></p>
                            <h4><%#Eval("Name")%><a href="../En/team-details.aspx?<%#Eval("Id") %>"> View More </a></h4>
						</div>
                    </div>
            </ItemTemplate>
       </asp:Repeater>

                </div>
            </div>
        </section>
        <!-- end venue area -->

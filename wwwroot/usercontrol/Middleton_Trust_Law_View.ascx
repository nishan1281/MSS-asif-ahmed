<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Trust_Law_View.ascx.cs" Inherits="UserControls_Middleton_Trust_Law_View" %>


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
                                    <asp:Repeater ID="REP_Law" runat="server">
                                        <ItemTemplate>
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="../<%#Eval("Image") %>" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#"><%#Eval("Name") %> : <%#Eval("Short_Desc") %>...,</a>
                                            </div>
                                        </li>                                       
                                        </ItemTemplate>
                                      </asp:Repeater>
                                    </ul>
                                </div>
                                <div class="tab-pane" id="two">
                                    <ul class="list-unstyled">
                                     <asp:Repeater ID="Rep_Trust" runat="server">
                                        <ItemTemplate>
                                        <li>
                                            <div class="col-sm-3">
                                                <a href="#"><img src="../<%#Eval("Image") %>" alt=""></a>
                                            </div>
                                            <div class="col-sm-9">
                                                <a href="#"><%#Eval("Short_Desc") %></a>
                                            </div>
                                            
                                        </li>
                                        </ItemTemplate>
                                      </asp:Repeater> 
                                        </li>
                                    </ul>
                                </div>
                            </div>
						</div>
                        <!-- End Tabs -->
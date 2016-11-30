<%@ Control Language="C#" AutoEventWireup="true" CodeFile="index.ascx.cs" Inherits="usercontrol_index" %>


<section>
    <div class="container ms-padd-adjst">
        <div class="empty-div"></div>
        <div class="row">
            <div class="col-md-8 col-sm-12 padd-right-none">
                <div class="bannerArea">
                    <div class="flexslider">
                        <ul class="slides list-unstyled">

                            <asp:Repeater ID="outerRep" runat="server" OnItemDataBound="outerRep_ItemDataBound">
                                <ItemTemplate>
                                    <li>
                                        <div class="jumbotron">
                                            <a href="<%#Eval("LinkPage") %>">
                                                <h1><%#Eval("Banner_Name")%></h1>
                                                <ul class="list-unstyled">
                                                    <li><a class="alert-link banner_li" href="<%#Eval("LinkPage") %>" style="color: white;">We offer the following services :</a></li>
                                                    <asp:HiddenField runat="server" ID="filenameid" Value='<%# Eval("Id") %>' />

                                                    <asp:Repeater ID="innerRep" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <a class="alert-link"><%#Eval("Menu") %> </a>

                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </ul>
                                            </a>
                                        </div>
                                        <img src="../<%#Eval("Banner_Image")%>" alt="" title="<%#Eval("Banner_Name") %>" style="cursor: pointer;">
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                </div>
            </div>


            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sub-banner1">
                    <p><strong>News  </strong></strong></p>
                    <div class="newsticker-jcarousellite">
                        <ul>
                            <asp:Repeater ID="rptr_news" runat="server">

                                <ItemTemplate>
                                    <li>
                                        <p><%#Eval("Description")%></p>
                                        <a href='news_details.aspx?id=<%#Eval("ID")%>'>Read More...</a>
                                       
                                    </li>
                                </ItemTemplate>

                            </asp:Repeater>
                        </ul>
                    </div>

                    <div class="sub-banner2">
                    </div>




                </div>

                <div class="sub-banner2">
                    <img src="../En/images/sub-banner1.jpg" />
                </div>

                <div class="sub-banner3">

                    <p><strong>Contact Us </strong></p>
                    <p>
                        <i class="fa fa-map-marker"></i>&nbsp Granite House, 8/ 10 Stanley Street,
Liverpool, L1 6AF
                    </p>
                    <p><i class="fa fa-phone"></i>&nbsp +44 (0)151 236 5599</p>
                </div>

            </div>




        </div>


    </div>
</section>
<!-- start Container -->
<section id="container">



    <!-- start about area -->
    <section class="aboutArea">
        <div class="container">
            <h2 class="h2-color">
                <img src="../En/images/heading-icon.png" />
                MIDDLETON SOLICITORS SERVICES</h2>
        </div>
        <div class="container padd-none">
            <div class="clearfix"></div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="commercial-law.aspx" title="Commercial Litigation">
                        <img src="images/ser2.jpg" />
                        <h3>Commercial Litigation</h3>
                    </a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="debt-recovery.aspx" title="Debt Recovery">
                        <img src="images/ser8.jpg" />
                        <h3>Debt Recovery</h3>
                    </a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="military-law.aspx" title="Military Law">
                        <img src="images/ser5.jpg" />
                        <h3>Military Law</h3>
                    </a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="personal-injury-claim.aspx" title="Personal Injury Claims">
                        <img src="images/ser1.jpg" />
                        <h3>Personal Injury Claims</h3>
                    </a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="recovering-payment-protection-insurance.aspx" title="Recovering Payment Protection Insurance">
                        <img src="images/ser4.jpg" />
                        <h3>Recovering Payment Protection Insurance</h3>
                    </a>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="sports-law.aspx" title="Sports Law">
                        <img src="images/ser3.jpg" />
                        <h3>Sports Law</h3>
                    </a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="commercial-and-residential-leases.aspx" title="Residential and Commercial Property">
                        <img src="images/ser7.jpg" />
                        <h3>Residential and Commercial Property</h3>
                    </a>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="wills-probate-trusts.aspx" title="Wills, Probate and Trusts">
                        <img src="images/ser6.jpg" />
                        <h3>Wills, Probate and Trusts</h3>
                    </a>
                </div>
            </div>
			
			<div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="employment.aspx" title="Employment">
                        <img src="images/ser9.jpg" />
                        <h3>Employment</h3>
                    </a>
                </div>
            </div>
			
			<div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="housing_disrepair.aspx" title="Housing Disrepair">
                        <img src="images/ser10.jpg" />
                        <h3>Housing Disrepair</h3>
                    </a>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-box">
                    <a href="driving-difence.aspx" title="Driving Difence">
                        <img src="images/ser11.jpg" />
                        <h3>Driving Difence</h3>
                    </a>
                </div>
            </div>



        </div>
    </section>
    <!-- end about area -->


    <!-- start venue area -->
    <section id="venueArea">
        <div class="container">


            <div class="special">
                <iframe src="testmonials/index.html" frameborder="0" scrolling="no" style="margin-bottom: 02%; border-bottom: 1px solid #dddddd;"
                    class="news-test"></iframe>
            </div>


        </div>
    </section>

    <!-- end venue area -->


</section>
<!-- end Container -->

<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="middleton-contactus-view.aspx.cs" Inherits="En_Middleton_ContactUs_View" Title="Untitled Page" %>
<%@ Register Src ="~/usercontrol/Middleton_Contactus_Details.ascx" TagName ="contactus" TagPrefix ="uc1"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:contactus ID="contactus1" runat="Server" />
</asp:Content>


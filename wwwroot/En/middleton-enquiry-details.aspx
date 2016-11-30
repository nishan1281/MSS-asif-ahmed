<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="middleton-enquiry-details.aspx.cs" Inherits="En_Middleton_Enquiry_Details" Title="Untitled Page" %>
<%@ Register Src ="~/usercontrol/Middleton_Enquiry_Details.ascx" TagName ="enquiry" TagPrefix ="uc1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:enquiry ID="enquiry1" runat="Server" />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="En_contact_us" %>
<%@ Register src ="~/usercontrol/Middleton_Contactus.ascx" TagName="contact" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:contact ID ="contactus1" runat ="server" />
</asp:Content>


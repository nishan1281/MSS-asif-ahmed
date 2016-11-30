<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="En_about_us" %>
<%@ Register Src ="~/usercontrol/aboutus.ascx" TagName ="aboutus" TagPrefix ="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Middleton solicitors firm in Liverpool, United Kingdom</title>
<meta name="description" content="Middleton Solicitors was founded in 2004 by Alan Middleton, the best and well-known solicitor in liverpool, UK has over 30 years of experience and has an enviable reputation as a top class lawyer in united kingdom." />
<meta name="keywords" content="solicitors in liverpool, solicitors liverpool, liverpool solicitors, best solicitor in liverpool, personal injury solicitors liverpool, personal injury solicitors in liverpool, commercial litigation solicitors liverpool" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <uc1:aboutus runat="server" ID="aboutus" />
</asp:Content>


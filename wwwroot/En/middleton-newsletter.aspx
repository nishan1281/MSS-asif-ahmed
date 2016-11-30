<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="middleton-newsletter.aspx.cs" Inherits="En_Middleton_Newsletter" Title="Untitled Page" %>
<%@ Register Src ="~/usercontrol/Middleton_Newsletter_View.ascx" TagName ="Newsletter" TagPrefix ="uc1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Newsletter ID ="newsletter1" runat ="server" />
</asp:Content>


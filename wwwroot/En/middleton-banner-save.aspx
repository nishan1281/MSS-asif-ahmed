<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="middleton-banner-save.aspx.cs" Inherits="En_Middleton_Banner_Save" Title="Untitled Page" %>

<%@ Register Src="~/usercontrol/Middleton_Add_Banner.ascx" TagName ="Banneradd" TagPrefix ="uc1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Banneradd ID="Banneradd1" runat ="server" /> 
</asp:Content>


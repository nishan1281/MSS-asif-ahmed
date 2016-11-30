<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="our-team.aspx.cs" Inherits="En_our_team" %>
<%@ Register Src ="~/usercontrol/our_team.ascx" TagName ="ourname" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ourname ID ="ourteam1" runat ="server" />
</asp:Content>


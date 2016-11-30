<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="middleton-our-team.aspx.cs" Inherits="En_Middleton_Our_Team" Title="Untitled Page" %>
<%@ Register Src ="~/usercontrol/Middleton_Our_Team.ascx" TagName ="Ourteam" TagPrefix ="uc2"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc2:Ourteam Id="our_team" runat="Server" />
</asp:Content>


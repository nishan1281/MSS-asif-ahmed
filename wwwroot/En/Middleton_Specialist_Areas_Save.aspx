<%@ Page Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="Middleton_Specialist_Areas_Save.aspx.cs" Inherits="En_Middleton_Specialist_Areas_Save" Title="Untitled Page" %>
<%@ Register Src ="~/usercontrol/Middleton_Specialist_Areas_Save.ascx" TagName ="sarea" TagPrefix ="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:sarea Id="specialist_area" runat="Server"></uc1:sarea>
</asp:Content>


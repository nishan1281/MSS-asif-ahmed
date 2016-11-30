<%@ Page Title="" Language="C#" MasterPageFile="~/En/Admin_Master.master" AutoEventWireup="true" CodeFile="NewsInfo.aspx.cs" Inherits="En_NewsInfo" %>

<%@ Register src="../usercontrol/NewsControl.ascx" tagname="NewsControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:NewsControl ID="NewsControl1" runat="server" />
</asp:Content>


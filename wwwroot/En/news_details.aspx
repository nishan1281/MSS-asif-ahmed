<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="news_details.aspx.cs" Inherits="En_news_details" %>




<%@ Register src="../usercontrol/news_details.ascx" tagname="news_details" tagprefix="uc1" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <uc1:news_details ID="news_details1" runat="server" />

    

</asp:Content>


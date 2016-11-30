<%@ Page Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="news_list.aspx.cs" Inherits="En_news_list" %>
<%@ Register src="../usercontrol/news_list.ascx" tagname="news_list" tagprefix="uc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <uc1:news_list ID="news_list1" runat="server" />
    
</asp:Content>

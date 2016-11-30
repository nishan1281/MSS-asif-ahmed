<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="En_index" %>
<%@ Register Src="~/usercontrol/index.ascx" TagName ="index" TagPrefix ="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta name="description"  content="Middleton solicitors, one of the best solicitors firms in liverpoolwith experienced lawyersproviding legal services like Personal Injury,commercial litigations, sport law and etc., for commercial and private clients in the UK."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
      <uc1:index ID ="index1" runat ="server" />

</asp:Content>


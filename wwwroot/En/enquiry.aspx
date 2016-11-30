<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="En_enquiry" %>
<%@ Register Src ="~/usercontrol/Midddleton_Enquiry.ascx" TagName ="enquiry" TagPrefix ="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:enquiry ID="enquiry1" runat ="server" />
</asp:Content>


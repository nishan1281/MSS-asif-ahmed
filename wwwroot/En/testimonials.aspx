<%@ Page Title="" Language="C#" MasterPageFile="~/En/PageMaster.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="En_testimonials" %>
<%@ Register Src="~/usercontrol/testimonials.ascx" TagName ="testimonials" TagPrefix ="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:testimonials ID ="testimonials1" runat ="server" />
</asp:Content>


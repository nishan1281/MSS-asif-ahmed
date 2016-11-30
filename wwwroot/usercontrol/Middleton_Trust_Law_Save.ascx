<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Trust_Law_Save.ascx.cs" Inherits="UserControls_Middleton_Client_Save" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<style>
    tr
{
	height:10px;
}
th
{
	text-align :center ;
}
</style>



<div class="container">
                <div class="row">
                    <div class="text-center col-sm-12">
                    	<h2>Trust And Law</h2>
                        <hr>
                    </div>
                    
<table style="float: left;margin-left: 150px;">
    <tr style="height: 60px;">    
        <td>Tittle</td><td>:</td>
        <td>
            <asp:DropDownList ID="ddl_Trustlaw" runat="server" class="form-control" style="width:250px;">
                <asp:ListItem >--Select--</asp:ListItem>
                <asp:ListItem >Trust</asp:ListItem>
                <asp:ListItem >Law</asp:ListItem>
            </asp:DropDownList>
        </td>
       <td rowspan ="3"><asp:Image ID="img_trust" runat="server" Height =150px Width =300px Visible ="false"/></td>

    </tr>
     <tr style="height: 60px;">    
        <td>Name</td><td>:</td>
        <td><asp:TextBox ID="txt_Name" class="form-control" runat="server" style="width:250px;" placeholder="Name"></asp:TextBox></td>
    </tr>    
    <tr>
        <td>Image</td><td>:</td>
        <td><asp:FileUpload ID="fu_ImageUpload" runat="server" /></td>
    </tr>
    <tr style="height: 120px;">   
        <td>Short Description</td><td style="width: 10px;">:</td>
        <td><asp:TextBox ID="txt_SDesc" class="form-control" runat="server" 
                TextMode ="MultiLine" style="width:250px;" Placeholder="Short Description"></asp:TextBox></td>
    </tr>    
    <tr>
        <td>Description</td><td>:</td>
        <td style="border: 1px solid #999494;" ><telerik:RadEditor ID="txt_Desc" runat="server" ToolbarMode="Floating" EditModes ="All" >
                              </telerik:RadEditor>
          </td>
    </tr>
    <tr style ="height:70px;">
    <td></td><td></td>
        
        <td><asp:Button ID="btn_submit" class="btn btn-success" runat ="server" Text ="Submit" ToolTip="Submit"
                ValidationGroup ="client" CausesValidation ="true" onclick="btn_submit_Click"/></td>
       
        
    </tr>
   
    
    
    <tr>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
            ErrorMessage="Enter the Name" ControlToValidate ="txt_Name" ValidationGroup ="client"></asp:RequiredFieldValidator>
            
           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
            ErrorMessage="Upload Image File" ControlToValidate ="fu_ImageUpload" ValidationGroup ="client"></asp:RequiredFieldValidator>--%>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None" 
            ErrorMessage="Enter the Short Description" ControlToValidate ="txt_SDesc" ValidationGroup ="client"></asp:RequiredFieldValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" 
            ErrorMessage="Enter the Description" ControlToValidate ="txt_Desc" ValidationGroup ="client"></asp:RequiredFieldValidator>
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="client"
            ShowMessageBox ="true" ShowSummary ="false"  />
        </td>
    </tr>
</table>

<div style ="margin-left: -98px;">
            <asp:GridView ID="gv_Banner" runat="server" AutoGenerateColumns ="false" 
                            DataKeyNames="Id" Width="900px" border="1" BackColor="White"
                            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                            GridLines="Vertical" style="float: left;margin-left: 240px;" 
                onrowdatabound="gv_Banner_RowDataBound">
    
        <Columns >
        
                   
            <asp:BoundField  ItemStyle-Width ="100px" ItemStyle-Height ="27" DataField="Id" HeaderText="ID" > 
                    <ItemStyle Width ="100px" />
            </asp:BoundField>
            
            <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Title" HeaderText="Title" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField> 
            
             <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Name" HeaderText="Name" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField>         
            
            <%--<asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Short_Desc" HeaderText="Short Description" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField> 
            
            <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Description" HeaderText="Description" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField> --%>
                       
             <asp:BoundField  ItemStyle-Width ="70px" ItemStyle-Height ="27" DataField="Status" HeaderText="Status" > 
                    <ItemStyle Width ="70px" />
            </asp:BoundField>
            
            
         
            <asp:TemplateField ItemStyle-Width = "85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText = "Publish">
            
                 <ItemTemplate>
                      <div align="center"> 
                            <asp:ImageButton ID="lnkPublish" runat="server"  OnClick = "Publish" style="width:25px; height :25px;cursor :pointer;" ToolTip="Status"
                            OnClientClick="return confirm('Are you sure you want to Change Banner Status?');"></asp:ImageButton>
                      </div>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField ItemStyle-Width = "85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText = "Edit">    
                 <ItemTemplate>
                      <div align="center"> 
                            <asp:ImageButton ID="lnkEdit" runat="server"  OnClick = "Edit" style="width:20px; height :20px;cursor :pointer;" ToolTip="Edit"
                            OnClientClick="return confirm('Are you sure you want to Edit this Banner?');" ImageUrl="~/En/images/Edit.jpg"></asp:ImageButton>
                      </div>
                </ItemTemplate>
            </asp:TemplateField>

               <asp:TemplateField ItemStyle-Width = "85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText = "Delete">  
                 <ItemTemplate>
                      <div align="center"> 
                            <asp:ImageButton ID="lnkDelete" runat="server"  OnClick = "Delete" style="width:20px; height :20px;cursor :pointer;" ToolTip="Delete"
                            OnClientClick="return confirm('Are you sure you want to Delete this Banner?');" ImageUrl="~/En/images/Delete.jpg"></asp:ImageButton>
                      </div>
                </ItemTemplate>
            </asp:TemplateField>
                
            
</Columns>
        
                 <EmptyDataTemplate>
             <h3 style ="color: #0b4199;">
                  No Pending Record Found </h3>
                </EmptyDataTemplate>

                <PagerStyle CssClass ="table_header1" BorderColor ="#CCCCCC" BorderStyle="Solid" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle CssClass ="table_header" BackColor="#067dba" ForeColor ="White" BorderColor ="#067dba" BorderStyle="Solid" />
                <AlternatingRowStyle BackColor="White" ForeColor ="black" />
                <RowStyle HorizontalAlign ="Center" ForeColor="Black" />
                <PagerStyle Cssclass="gridpager" HorizontalAlign="Right"></PagerStyle>

        
    
    </asp:GridView>

        
    <table width="90%" align="center" style="float: left;margin-left: 250px;">

         <tr>
              <td style="float:left;">
                  <div style="color:#067dba; font-weight: bold;width: 200px;"><asp:Label ID="lblPageInfo" runat="server" Text="Label"></asp:Label></div>
             </td>
              <td>
                    <table style="float: left;margin-left: 580px;">
                        <tr>
                            <td>
                                <asp:LinkButton ID="lnkbtnPrevious" OnClick="lnkbtnPrevious_Click" runat="server" CssClass="ButtonCSS"> Previous </asp:LinkButton>

                            </td>
                            <td>
                                <asp:DataList ID="dlPaging" runat="server" RepeatDirection="Horizontal" OnItemDataBound="dlPaging_ItemDataBound"
                                    OnItemCommand="dlPaging_ItemCommand" onprerender="dlPaging_PreRender">
                                    <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>'
                                    CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>' CssClass="NumericButtonCSS"></asp:LinkButton>&nbsp;
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>
                                 <asp:LinkButton ID="lnkbtnNext" OnClick="lnkbtnNext_Click" runat="server" CssClass="NextPreviousButtonCSS">Next</asp:LinkButton>
                            </td>
                        </tr>
                    </table>

            </td>
        </tr>
</table>
    </div>

   </div> </div> 
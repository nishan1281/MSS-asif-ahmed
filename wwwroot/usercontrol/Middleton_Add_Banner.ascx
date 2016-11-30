<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Add_Banner.ascx.cs" Inherits="UserControls_Middleton_Add_Banner" %>

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
                    	<h2>Banner</h2>
                        <hr>
                    </div>
                    
<table style="float: left;margin-left: 150px;" class="banner">
    <tr style="height: 30px;">    
        <td>Name</td><td>:</td>
        <td><asp:TextBox ID="txt_Name" class="form-control" runat="server" placeholder="Banner Name"></asp:TextBox></td>
        <td></td>
        <td rowspan ="2"><asp:Image ID="img_Banner" runat="server" Height =150px Width =300px Visible ="false"/></td>
    </tr>   
   
    <tr style="height: 60px;">
        <td>Menu</td><td>:</td>
        <td><asp:TextBox ID="txt_Menu" class="form-control" runat="server" placeholder="Banner Menu"></asp:TextBox></td>
        <td  style="padding: 10px;"><asp:Button ID="btn_Menuadd" class="btn btn-success" runat ="server" 
                Text ="Add" onclick="btn_Menuadd_Click" ToolTip ="Add Menu"/></td>
    </tr>
    <tr style="height: 60px;">
        <td></td><td></td>
        <td>
            <asp:ListBox ID="ls_Menu" runat="server" Width =300px></asp:ListBox>
        </td>
    </tr>
     <tr style="height: 60px;">
        <td>Image</td><td>:</td>
        <td><asp:FileUpload ID="fu_ImageUpload" runat="server" /></td>
    </tr>
    <tr style ="height: 60px;">
        <td>LinkPage</td><td>:</td>
        <td>
            <asp:DropDownList ID="ddl_LinkPage" runat="server" class="form-control" style="width:250px;">
                <asp:ListItem >--Select--</asp:ListItem>                
            </asp:DropDownList>
        </td>
    </tr>
    
    <tr style ="height:30px;">
    <td></td><td></td>
        
        <td><asp:Button ID="btn_submit" class="btn btn-success" runat ="server" Text ="Submit" 
                ValidationGroup ="Banner" CausesValidation ="true" onclick="btn_submit_Click" ToolTip ="Submit"/></td>
       
        
    </tr>
   
    
    
    <tr>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None" 
            ErrorMessage="Enter Banner Name" ControlToValidate ="txt_Name" ValidationGroup ="Banner"></asp:RequiredFieldValidator>           
            
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup ="Banner"
            ShowMessageBox ="true" ShowSummary ="false"  />
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
            ErrorMessage="Select Link Page" ControlToValidate ="ddl_LinkPage" ValidationGroup ="Banner" InitialValue ="--Select--"></asp:RequiredFieldValidator>
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
        
                   
            <asp:BoundField  ItemStyle-Width ="100px" ItemStyle-Height ="27" DataField="Id" HeaderText="Banner ID" > 
                    <ItemStyle Width ="100px" />
            </asp:BoundField>
            
            <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Banner_Name" HeaderText="Banner Name" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField> 
            
            <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Menu" HeaderText="Menu" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField> 
            
             <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="LinkPage" HeaderText="LinkPage" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField>        
                    
                       
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
                <HeaderStyle CssClass ="table_header" BackColor="#067dba" ForeColor ="White" BorderColor ="#067dba" BorderStyle="Solid"/>
                <AlternatingRowStyle BackColor="White" ForeColor ="black" />
                <RowStyle HorizontalAlign ="Center" ForeColor="Black" />
                <PagerStyle Cssclass="gridpager" HorizontalAlign="Right"></PagerStyle>

        
    
    </asp:GridView>

        
    <table width="90%" align="center" style="float: left;margin-left: 250px;">

         <tr>
              <td style="float:left;">
                  <div style="color:#067CBA; font-weight: bold;width: 200px;"><asp:Label ID="lblPageInfo" runat="server" Text="Label"></asp:Label></div>
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
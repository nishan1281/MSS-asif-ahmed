<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Middleton_Enquiry_Details.ascx.cs" Inherits="UserControls_Middleton_Enquiry_Details" %>

<style>
    tr
{
	height:40px;
}
th
{
	text-align :center ;
}

</style>

<div class="container">
                <div class="row">
                    <div class="text-center col-sm-12">
                    	<h2>Enquiry Details</h2>
                        <hr>
                    </div>
                    
<div style ="float:left;margin-left: 10px;">
            <asp:GridView ID="gv_Contact_Us" runat="server" AutoGenerateColumns ="false" 
                            DataKeyNames="Id" Width="900px" border="1" BackColor="White"
                            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                            GridLines="Vertical" style="float: left;margin-left: 126px;">
    
        <Columns >
        
                   
            <asp:BoundField  ItemStyle-Width ="100px" ItemStyle-Height ="27" DataField="Id" HeaderText="ID" > 
                    <ItemStyle Width ="20px" />
            </asp:BoundField>
            
            <asp:BoundField  ItemStyle-Width ="150px" ItemStyle-Height ="27" DataField="Name" HeaderText="Name" > 
                    <ItemStyle Width ="70px" />
            </asp:BoundField>         
                       
             <asp:BoundField  ItemStyle-Width ="70px" ItemStyle-Height ="27" DataField="Phone" HeaderText="Phone" > 
                    <ItemStyle Width ="50px" />
            </asp:BoundField>
            
            <asp:BoundField  ItemStyle-Width ="70px" ItemStyle-Height ="27" DataField="Email" HeaderText="Email" > 
                    <ItemStyle Width ="50px" />
            </asp:BoundField>
            
                      
            <asp:BoundField  ItemStyle-Width ="70px" ItemStyle-Height ="27" DataField="Message" HeaderText="Message" > 
                    <ItemStyle Width ="150px" />
            </asp:BoundField>
            
</Columns>
        
                 <EmptyDataTemplate>
             <h3 style ="color: #0b4199;">
                  No Pending Record Found </h3>
                </EmptyDataTemplate>

                <PagerStyle CssClass ="table_header1" BorderColor ="#CCCCCC" BorderStyle="Solid" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#067CBA" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle CssClass ="table_header" BackColor="#067CBA" ForeColor ="White" BorderColor ="#067CBA" BorderStyle="Solid" />
                <RowStyle HorizontalAlign ="Center" ForeColor="Black" />
                <PagerStyle Cssclass="gridpager" HorizontalAlign="Right"></PagerStyle>

        
    
    </asp:GridView>

        
    <table width="90%" align="center" style="float: left;margin-left: 126px;">

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
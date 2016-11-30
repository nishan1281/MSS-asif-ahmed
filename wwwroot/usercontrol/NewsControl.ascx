<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewsControl.ascx.cs" Inherits="usercontrol_NewsControl" %>

<style>
    tr {
        height: 10px;
    }

    th {
        text-align: center;
    }
</style>


<div class="container">
    <div class="row">
        <div class="text-center col-sm-12">
            <h2>NEWS</h2>
            <hr>
        </div>

        <table style="float: left; margin-left: 150px;" class="banner">
            <tr style="height: 30px;">
                <td>Title</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txt_title" class="form-control" runat="server" placeholder="Banner Name"></asp:TextBox></td>

            </tr>

            <tr style="height: 60px;">
                <td>Content</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txt_description" class="form-control" runat="server" placeholder="News Description" TextMode="MultiLine"></asp:TextBox></td>

            </tr>

            <tr style="height: 60px;">
                <td>Image 1</td>
                <td>:</td>
                <td>
                    <asp:FileUpload ID="fu_ImageUpload1" runat="server" /></td>
            </tr>
            <tr style="height: 60px;">
                <td>Image 2</td>
                <td>:</td>
                <td>
                    <asp:FileUpload ID="fu_ImageUpload2" runat="server" /></td>
            </tr>
            <tr style="height: 60px;">
                <td>Image 3</td>
                <td>:</td>
                <td>
                    <asp:FileUpload ID="fu_ImageUpload3" runat="server" /></td>
            </tr>
            <tr style="height: 60px;">
                <td></td>
                <td></td>
                <td>
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" /></td>
            </tr>







        </table>
        <div style="margin-left: -98px;">
            <asp:GridView ID="gv_Banner" runat="server" AutoGenerateColumns="false"
                DataKeyNames="Id" Width="900px" border="1" BackColor="White"
                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                GridLines="Vertical" Style="float: left; margin-left: 240px;"
                OnRowDataBound="gv_Banner_RowDataBound">

                <Columns>


                    <asp:BoundField ItemStyle-Width="100px" ItemStyle-Height="27" DataField="ID" HeaderText="News ID">
                        <ItemStyle Width="100px" />
                    </asp:BoundField>

                    <asp:BoundField ItemStyle-Width="150px" ItemStyle-Height="27" DataField="Title" HeaderText="Title">
                        <ItemStyle Width="150px" />
                    </asp:BoundField>

                    <asp:BoundField ItemStyle-Width="350px" ItemStyle-Height="27" DataField="Description" HeaderText="Description">
                        <ItemStyle Width="350px" />
                    </asp:BoundField>


                    <asp:BoundField ItemStyle-Width="70px" ItemStyle-Height="27" DataField="Status" HeaderText="Status">
                        <ItemStyle Width="70px" />
                    </asp:BoundField>



                    <asp:TemplateField ItemStyle-Width="85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText="Publish">

                        <ItemTemplate>
                            <div align="center">
                                <asp:ImageButton ID="lnkPublish" runat="server" OnClick="Publish" Style="width: 25px; height: 25px; cursor: pointer;" ToolTip="Status"
                                    OnClientClick="return confirm('Are you sure you want to Change NEWS Status?');"></asp:ImageButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText="Edit">
                        <ItemTemplate>
                            <div align="center">
                                <asp:ImageButton ID="lnkEdit" runat="server" OnClick="Edit" Style="width: 20px; height: 20px; cursor: pointer;" ToolTip="Edit"
                                    OnClientClick="return confirm('Are you sure you want to Edit this NEWS?');" ImageUrl="~/En/images/Edit.jpg"></asp:ImageButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField ItemStyle-Width="85px" ControlStyle-ForeColor="Green" ControlStyle-Font-Bold="true" HeaderText="Delete">
                        <ItemTemplate>
                            <div align="center">
                                <asp:ImageButton ID="lnkDelete" runat="server" OnClick="Delete" Style="width: 20px; height: 20px; cursor: pointer;" ToolTip="Delete"
                                    OnClientClick="return confirm('Are you sure you want to Delete this NEWS?');" ImageUrl="~/En/images/Delete.jpg"></asp:ImageButton>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

                <EmptyDataTemplate>
                    <h3 style="color: #0b4199;">No Pending Record Found </h3>
                </EmptyDataTemplate>

                <PagerStyle CssClass="table_header1" BorderColor="#CCCCCC" BorderStyle="Solid" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle CssClass="table_header" BackColor="#067dba" ForeColor="White" BorderColor="#067dba" BorderStyle="Solid" />
                <AlternatingRowStyle BackColor="White" ForeColor="black" />
                <RowStyle HorizontalAlign="Center" ForeColor="Black" />
                <PagerStyle CssClass="gridpager" HorizontalAlign="Right"></PagerStyle>



            </asp:GridView>


            <table width="90%" align="center" style="float: left; margin-left: 250px;">

                <tr>
                    <td style="float: left;">
                        <div style="color: #067CBA; font-weight: bold; width: 200px;">
                            <asp:Label ID="lblPageInfo" runat="server" Text="Label"></asp:Label></div>
                    </td>
                    <td>
                        <table style="float: left; margin-left: 580px;">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lnkbtnPrevious" OnClick="lnkbtnPrevious_Click" runat="server" CssClass="ButtonCSS"> Previous </asp:LinkButton>

                                </td>
                                <td>
                                    <asp:DataList ID="dlPaging" runat="server" RepeatDirection="Horizontal" OnItemDataBound="dlPaging_ItemDataBound"
                                        OnItemCommand="dlPaging_ItemCommand" OnPreRender="dlPaging_PreRender">
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


    </div>
</div>

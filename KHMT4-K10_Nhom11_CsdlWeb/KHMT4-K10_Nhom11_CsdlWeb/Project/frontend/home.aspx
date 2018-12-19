<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form3" runat="server">--%>
        <h1>Trang chủ</h1>
            <asp:SqlDataSource ID="sqlMH" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu2 %>" SelectCommand="SELECT [HinhAnh], [DonGia], [TenMh], [MaMh] FROM [MATHANG]"></asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaMh" DataSourceID="sqlMH" GroupItemCount="4" OnItemCommand="ListView1_ItemCommand">
            <AlternatingItemTemplate>
                <td id="Td1" runat="server" style="" class="col-25">
                    <div class="content__view">
                        <div class="padding_side">
                            <div class="border_side">
                                <asp:Label ID="lblMaMh" runat="server" Text='<%# Eval("MaMh", "{0}") %>' Visible="False"></asp:Label>
                                <asp:HyperLink ID="img" runat="server" CssClass="img" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' NavigateUrl='<%# "chitietsanpham.aspx?MaMh=" + Eval("MaMh") %>'>HyperLink</asp:HyperLink>
                                <br />
                                <asp:Label ID="DonGiaLabel" runat="server" CssClass="price" Text='<%# Eval("DonGia") %>'></asp:Label>
                                <asp:Label CssClass="price" runat="server" Text="VND"></asp:Label>
                                <br />
                                <asp:HyperLink ID="lblTenMH" runat="server" CssClass="name" NavigateUrl='<%# "chitietsanpham.aspx?MaMh=" + Eval("MaMh") %>' Text='<%# Eval("TenMh", "{0}") %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>'>Xem chi tiết</asp:HyperLink>
                                <asp:Button ID="Button1" runat="server" CommandName="add" CssClass="btn btn-primary" Text="Thêm vào giỏ" />
                            </div>
                        </div>
                    </div>
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td id="Td2" runat="server" style="">HinhAnh:
                    <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                    <br />DonGia:
                    <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                    <br />TenMh:
                    <asp:TextBox ID="TenMhTextBox" runat="server" Text='<%# Bind("TenMh") %>' />
                    <br />MaMh:
                    <asp:Label ID="MaMhLabel1" runat="server" Text='<%# Eval("MaMh") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td id="Td3" runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td id="Td4" runat="server" style="">HinhAnh:
                    <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                    <br />DonGia:
                    <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                    <br />TenMh:
                    <asp:TextBox ID="TenMhTextBox" runat="server" Text='<%# Bind("TenMh") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td id="Td5" runat="server" class="col-25">
                    <div class="content__view">
                        <div class="padding_side">
                            <div class="border_side">
                                <asp:Label ID="lblMaMh" runat="server" Text='<%# Eval("MaMh", "{0}") %>' Visible="False"></asp:Label>
                                <asp:HyperLink ID="img" runat="server" CssClass="img" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' NavigateUrl='<%# "chitietsanpham.aspx?MaMh=" + Eval("MaMh") %>'>HyperLink</asp:HyperLink>
                                <br />
                                <asp:Label ID="DonGiaLabel" runat="server" CssClass="price" Text='<%# Eval("DonGia") %>'></asp:Label>
                                <asp:Label ID="Label1" CssClass="price" runat="server" Text="VND"></asp:Label>
                                <br />
                                <asp:HyperLink ID="lblTenMH" runat="server" CssClass="name" NavigateUrl='<%# "chitietsanpham.aspx?MaMh=" + Eval("MaMh") %>' Text='<%# Eval("TenMh", "{0}") %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>'>Xem chi tiết</asp:HyperLink>
                                <asp:Button ID="Button1" runat="server" CommandName="add" CssClass="btn btn-primary" Text="Thêm vào giỏ" />
                            </div>
                        </div>
                    </div>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td6" runat="server" class="col-25">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2" runat="server">
                        <td id="Td7" runat="server" style="text-align:center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField CurrentPageLabelCssClass="content__view" />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td id="Td8" runat="server" style="">HinhAnh:
                    <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                    <br />DonGia:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                    <br />TenMh:
                    <asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' />
                    <br />MaMh:
                    <asp:Label ID="MaMhLabel" runat="server" Text='<%# Eval("MaMh") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        
   <%-- </form>--%>
</asp:Content>
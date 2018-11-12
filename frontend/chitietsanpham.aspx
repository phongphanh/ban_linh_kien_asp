<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="chitietsanpham.aspx.cs" Inherits="sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>đây là trang sản phẩm</h1>
    <br /><br />
    <a href="gio_hang.aspx" style="text-decoration: underline;color:#1899ED;">Thêm vào giỏ hàng</a>

        <asp:SqlDataSource ID="sqlMH" runat="server" ConnectionString="<%$ ConnectionStrings:thietbiData %>" SelectCommand="SELECT [HinhAnh], [TenMh] FROM [MATHANG]"></asp:SqlDataSource>
        <asp:DataList ID="DataList3" runat="server" DataSourceID="sqlMH">
            <ItemTemplate>
                HinhAnh:
                <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                <br />
                TenMh:
                <asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="mathang.aspx.cs" Inherits="frontend_danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>Trang sản phẩm theo danh mục</h1>
        <p>
            <asp:SqlDataSource ID="sqlmathang" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu5ConnectionString2 %>" SelectCommand="SELECT [MaMh], [MaDm], [TenMh], [DonGia], [SoLuong], [HinhAnh] FROM [MATHANG] WHERE ([MaDm] = @MaDm)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaDm" QueryStringField="MaDm" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <asp:DataList ID="DataList3" runat="server" CellPadding="10" CssClass="content__view" DataKeyField="MaMh" DataSourceID="sqlmathang" RepeatColumns="4">
            <ItemTemplate>
                <div class="item">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="img" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>'>HyperLink</asp:HyperLink>
                    <br />
                    <asp:Label ID="DonGiaLabel" runat="server" CssClass="price" Text='<%# Eval("DonGia") %>' />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="name" NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>' Text='<%# Eval("TenMh", "{0}") %>'></asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-primary" NavigateUrl="&quot;chitietsanpham.aspx?MaMh= &quot; + Eval(&quot;MaMh&quot;)">Xem chi tiết</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-primary">Thêm vào giỏ</asp:HyperLink>
                </div>
<br />
            </ItemTemplate>
        </asp:DataList>
    <br />
    <%--<a href="chitietsanpham.aspx" style="text-decoration: underline;color:#1899ED;">đây là link sản phẩm</a>--%>
    </form>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="frontend_danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form3" runat="server">--%>
        <asp:Label ID="txtTitle" runat="server" Font-Bold="True" Font-Size="24px" ForeColor="#000000"></asp:Label>
        <asp:SqlDataSource ID="sqlGetTenDM" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT [TenDm] FROM [DANHMUC] WHERE ([MaDm] = @MaDm)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="MaDm" Name="MaDm" QueryStringField="MaDm" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gridTenDm" runat="server" DataSourceID="sqlGetTenDM" Visible="False">
    </asp:GridView>
            <asp:SqlDataSource ID="sqlmathang" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT [MaMh], [TenMh], [DonGia], [HinhAnh] FROM [MATHANG] WHERE ([MaDm] = @MaDm)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaDm" QueryStringField="MaDm" Type="Int32" DefaultValue="MaDm"/>
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:DataList ID="DataList3" runat="server" CellPadding="10" CssClass="content__view" DataKeyField="MaMh" DataSourceID="sqlmathang" RepeatColumns="4" ViewStateMode="Enabled" OnItemCommand="DataList3_ItemCommand1">
            <ItemTemplate>
                <div class="item">
                    <asp:HyperLink ID="img" runat="server" CssClass="img" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>'>HyperLink</asp:HyperLink>
                    <asp:Label ID="lblMaMh" runat="server" Text='<%# Eval("MaMh") %>' Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="DonGiaLabel" runat="server" CssClass="price" Text='<%# Eval("DonGia") %>' />
                    <asp:Label ID="Label1" CssClass="price" runat="server" Text="VND"></asp:Label>
                    <br />
                    <asp:HyperLink ID="tenMh" runat="server" CssClass="name" NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>' Text='<%# Eval("TenMh", "{0}") %>'></asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "chitietsanpham.aspx?MaMh= " + Eval("MaMh") %>'>Xem chi tiết</asp:HyperLink>
                    <asp:Button ID="Button1" runat="server" CommandName="add" CssClass="btn btn-primary" Text="Thêm vào giỏ" />
                </div>
<br />
            </ItemTemplate>
        </asp:DataList>
    <br />
        
    <%--<a href="chitietsanpham.aspx" style="text-decoration: underline;color:#1899ED;">đây là link sản phẩm</a>--%>
    <%--</form>--%>
    <%--</form>--%>
</asp:Content>


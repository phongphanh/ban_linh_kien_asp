<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="mathang.aspx.cs" Inherits="frontend_danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>Trang sản phẩm theo danh mục</h1>
        <p>
            <asp:SqlDataSource ID="sqlmathang" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu5ConnectionString2 %>" SelectCommand="SELECT [MaMh], [MaDm], [TenMh], [DonGia], [HinhAnh] FROM [MATHANG] WHERE ([MaDm] = @MaDm)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaDm" QueryStringField="MaDm" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:DataList ID="DataList3" runat="server" DataSourceID="sqlmathang" RepeatColumns="4" CssClass="content__view" DataKeyField="MaMh">
                <%--<ItemTemplate>
                    TenMh:
                    <asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' />
                    <br />
                    DonGia:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                    <br />
                    HinhAnh:
                    <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                    <br />
<br />
                </ItemTemplate>--%>
                <ItemTemplate>
                <div class="item">
                    <div class="item-img">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                    </div>
                    <div class="item-text">
                        <p><asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' CssClass="price"/></p>
                        <p><asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' CssClass="name"/></p>
                        <p>
                            <asp:hyperlink id="viewchitiet" runat="server" cssclass="btn btn-primary" navigateurl='<%# ("chitietsanpham.aspx?MaMh=") + Eval("MaMh") %>'>
                                <span>xem chi tiết</span>
                            </asp:hyperlink>
                            <button class="btn btn-primary">
                                <span>Thêm vào giỏ</span>
                            </button>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
            </asp:DataList>
        </p>
    <br />
    <%--<a href="chitietsanpham.aspx" style="text-decoration: underline;color:#1899ED;">đây là link sản phẩm</a>--%>
    </form>
</asp:Content>


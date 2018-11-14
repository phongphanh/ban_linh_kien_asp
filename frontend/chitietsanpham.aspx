<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="chitietsanpham.aspx.cs" Inherits="sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>đây là trang sản phẩm</h1>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [MATHANG] WHERE ([MaMh] = @MaMh)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaMh" QueryStringField="MaMh" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:DataList ID="DataList3" runat="server" DataKeyField="MaMh" DataSourceID="SqlDataSource1" RepeatColumns="1" CssClass="content-detail">
                <ItemTemplate>
                    <div class="item-detail">
                        <div class="item-img col">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' />
                        </div>
                        <div class="item-information col">
                            <asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' CssClass="name"/>
                            <p>
                                <span>
                                    Mã sản phẩm :
                                </span>
                                <asp:Label ID="MaMhLabel" runat="server" Text='<%# Eval("MaMh") %>' />
                            </p>
                            <p class="price">
                                <span style="font-weight:700; color:#fff;">Giá : </span>
                                <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' CssClass="price-item"/>
                            </p>
                            <p>
                                <span>Số lượng : </span>
                                <asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number" Width="50px"></asp:TextBox>
                                <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                            </p>
                        </div>
                        <div class="clear-fix"></div>
                        <div class="item-method">
                            <h3>Thông tin chi tiết</h3>
                            <div class="item-method__wrap">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenMh") %>' CssClass="name"/>
                                <p>
                                    <span class="text-highlight">Tính năng</span>
                                    <asp:Label ID="TinhNangLabel" runat="server" Text='<%# Eval("TinhNang") %>' />
                                </p>
                                <p>
                                    <span class="text-highlight">Thông số kỹ thuật</span>
                                    <asp:Label ID="ThongSoKiThuatLabel" runat="server" Text='<%# Eval("ThongSoKiThuat") %>' />
                                </p>
                                <p>
                                    <span class="text-highlight">Bảo hành</span>
                                    <asp:Label ID="BaoHanhLabel" runat="server" Text='<%# Eval("BaoHanh") %>' />
                                </p>
                                <p>
                                    <span class="text-highlight">Từ khóa SP</span>
                                    <asp:Label ID="TuKhoaMHLabel" runat="server" Text='<%# Eval("TuKhoaMH") %>' />
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </p>
    <br /><br />
    <a href="gio_hang.aspx" style="text-decoration: underline;color:#1899ED;">Thêm vào giỏ hàng</a>

        </form>

</asp:Content>


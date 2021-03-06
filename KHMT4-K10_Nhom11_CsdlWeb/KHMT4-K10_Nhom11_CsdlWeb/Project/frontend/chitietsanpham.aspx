﻿<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="chitietsanpham.aspx.cs" Inherits="sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--</form>--%>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [MATHANG] WHERE ([MaMh] = @MaMh)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="MaMh" Name="MaMh" QueryStringField="MaMh" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:DataList ID="DataList3" runat="server" DataKeyField="MaMh" DataSourceID="SqlDataSource1" Width="100%" OnItemCommand="DataList3_ItemCommand">
                <ItemTemplate>
                    <div class="content-detail">
                        <div class="item-img col">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("HinhAnh", "{0}") %>' />
                        </div>
                        
                        <div class="item-information col">
                            <asp:Label ID="TenMhLabel" runat="server" CssClass="name" Text='<%# Eval("TenMh") %>' />
                            <br />
                            <div>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18px" Text="Mã sản phẩm : "></asp:Label>
                                <asp:Label ID="MaMhLabel" runat="server" Text='<%# Eval("MaMh") %>' />
                            </div>
                            <br />
                            <div>
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="18px" Text="Số lượng : "></asp:Label>
                                <asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number" OnTextChanged="txtSoLuong_TextChanged" CssClass="number--item1">1</asp:TextBox>
                            </div>
                            <div>
                                <br />
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="18px" Text="Hàng còn  : "></asp:Label>
                                <asp:Label ID="lblHangCon" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                            </div>
                            <br />
                            <div class="price">
                                <asp:Label ID="Label5" runat="server" CssClass="price-item" Text="Giá : "></asp:Label>
                                &nbsp;<asp:Label ID="DonGiaLabel" runat="server" CssClass="price-item" Text='<%# Eval("DonGia") %>' />
                                <asp:Label ID="Label1" CssClass="price-item" runat="server" Text="VND"></asp:Label>
                            </div>
                            <br />
                            <br />
                            <asp:Button ID="btnAdd" runat="server" CommandName="add" CssClass="btn btn-primary" Text="Đặt mua" />
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-primary" NavigateUrl="mua_hang.aspx">Thanh toán</asp:HyperLink>
                        </div>
                        <div class="clear-fix">
                        </div>
                    </div>
                    <br />
                    <div class="item-method__wrap">
                        <asp:Label ID="TenMhLabel0" runat="server" CssClass="name" Text='<%# Eval("TenMh") %>' />
                        <br />
                        <asp:Label ID="Label6" runat="server" CssClass="text-highlight" Text="Tính năng"></asp:Label>
                        <br />
                        <asp:Label ID="TinhNangLabel" runat="server" Text='<%# Eval("TinhNang") %>' />
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="text-highlight" Text="Thông số kỹ thuật"></asp:Label>
                        <br />
                        <asp:Label ID="ThongSoKiThuatLabel" runat="server" Text='<%# Eval("ThongSoKiThuat") %>' />
                        <br />
                        <asp:Label ID="Label8" runat="server" CssClass="text-highlight" Text="Bảo hành"></asp:Label>
                        <br />
                        <asp:Label ID="BaoHanhLabel" runat="server" Text='<%# Eval("BaoHanh") %>' />
                        <br />
                        <asp:Label ID="Label9" runat="server" CssClass="text-highlight" Text="Từ khóa"></asp:Label>
                        <br />
                        <asp:Label ID="TuKhoaMHLabel" runat="server" Text='<%# Eval("TuKhoaMH") %>' />
                    </div>
<br />
                </ItemTemplate>
            </asp:DataList>
        </p>
    <br /><br />
    <a href="gio_hang.aspx" style="text-decoration: underline;color:#1899ED;">Thêm vào giỏ hàng  </a>
    <%--</form>--%>

</asp:Content>


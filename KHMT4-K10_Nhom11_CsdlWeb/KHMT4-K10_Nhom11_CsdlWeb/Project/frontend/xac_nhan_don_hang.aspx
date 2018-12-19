<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="xac_nhan_don_hang.aspx.cs" Inherits="xac_nhan_don_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="confirm">
        <div class="confirm--title text-center">
            <h1>Xác nhận đơn hàng</h1>
                <asp:SqlDataSource ID="sqlDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [MaDh] = @MaDh" InsertCommand="INSERT INTO [DONHANG] ([MaDh], [TenTk], [NguoiNhan], [Email], [DiaChiNhanHang], [SoDienThoai], [TongTien], [NgayDat], [TinhTrang]) VALUES (@MaDh, @TenTk, @NguoiNhan, @Email, @DiaChiNhanHang, @SoDienThoai, @TongTien, @NgayDat, @TinhTrang)" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [TenTk] = @TenTk, [NguoiNhan] = @NguoiNhan, [Email] = @Email, [DiaChiNhanHang] = @DiaChiNhanHang, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien, [NgayDat] = @NgayDat, [TinhTrang] = @TinhTrang WHERE [MaDh] = @MaDh">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDh" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaDh" Type="Int32" />
                        <asp:Parameter Name="TenTk" Type="String" />
                        <asp:Parameter Name="NguoiNhan" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="DiaChiNhanHang" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Decimal" />
                        <asp:Parameter Name="NgayDat" Type="DateTime" />
                        <asp:Parameter Name="TinhTrang" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenTk" Type="String" />
                        <asp:Parameter Name="NguoiNhan" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="DiaChiNhanHang" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Decimal" />
                        <asp:Parameter Name="NgayDat" Type="DateTime" />
                        <asp:Parameter Name="TinhTrang" Type="Boolean" />
                        <asp:Parameter Name="MaDh" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlCheckMa" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [DONHANG]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [MaDh] = @MaDh AND [MaMh] = @MaMh" InsertCommand="INSERT INTO [ChiTietDonHang] ([MaDh], [MaMh], [SoLuong], [ThanhTien]) VALUES (@MaDh, @MaMh, @SoLuong, @ThanhTien)" SelectCommand="SELECT * FROM [ChiTietDonHang]" UpdateCommand="UPDATE [ChiTietDonHang] SET [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien WHERE [MaDh] = @MaDh AND [MaMh] = @MaMh">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDh" Type="Int32" />
                        <asp:Parameter Name="MaMh" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaDh" Type="Int32" />
                        <asp:Parameter Name="MaMh" Type="Int32" />
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="ThanhTien" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="ThanhTien" Type="Decimal" />
                        <asp:Parameter Name="MaDh" Type="Int32" />
                        <asp:Parameter Name="MaMh" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [MATHANG] WHERE [MaMh] = @MaMh" InsertCommand="INSERT INTO [MATHANG] ([MaDm], [TenMh], [SoLuong], [DonGia], [HinhAnh], [TinhNang], [ThongSoKiThuat], [BaoHanh], [TuKhoaMH]) VALUES (@MaDm, @TenMh, @SoLuong, @DonGia, @HinhAnh, @TinhNang, @ThongSoKiThuat, @BaoHanh, @TuKhoaMH)" SelectCommand="SELECT * FROM [MATHANG]" UpdateCommand="UPDATE [MATHANG] SET [MaDm] = @MaDm, [TenMh] = @TenMh, [SoLuong] = @SoLuong, [DonGia] = @DonGia, [HinhAnh] = @HinhAnh, [TinhNang] = @TinhNang, [ThongSoKiThuat] = @ThongSoKiThuat, [BaoHanh] = @BaoHanh, [TuKhoaMH] = @TuKhoaMH WHERE [MaMh] = @MaMh">
                    <DeleteParameters>
                        <asp:Parameter Name="MaMh" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaDm" Type="Int32" />
                        <asp:Parameter Name="TenMh" Type="String" />
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="DonGia" Type="Decimal" />
                        <asp:Parameter Name="HinhAnh" Type="String" />
                        <asp:Parameter Name="TinhNang" Type="String" />
                        <asp:Parameter Name="ThongSoKiThuat" Type="String" />
                        <asp:Parameter Name="BaoHanh" Type="String" />
                        <asp:Parameter Name="TuKhoaMH" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MaDm" Type="Int32" />
                        <asp:Parameter Name="TenMh" Type="String" />
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="DonGia" Type="Decimal" />
                        <asp:Parameter Name="HinhAnh" Type="String" />
                        <asp:Parameter Name="TinhNang" Type="String" />
                        <asp:Parameter Name="ThongSoKiThuat" Type="String" />
                        <asp:Parameter Name="BaoHanh" Type="String" />
                        <asp:Parameter Name="TuKhoaMH" Type="String" />
                        <asp:Parameter Name="MaMh" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlSL" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT [SoLuong] FROM [MATHANG]">
                </asp:SqlDataSource>
                <asp:GridView ID="gridSL" runat="server" AutoGenerateColumns="False" DataSourceID="sqlSL" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    </Columns>
                </asp:GridView>
                
        </div>
        <div class="col col-33">
            <h2>Thông tin khách hàng</h2>
                <table class="confirm--customer">
                    <tr>
                        <td>Họ tên:</td>
                        <td>
                            <asp:Label ID="lblHoTen" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa chỉ:</td>
                        <td>
                            <asp:Label ID="lblDiaChi" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td id="r">Số điện thoại:</td>
                        <td>
                            <asp:Label ID="lblSDT" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            
        </div>
        <div class="col col-66">
            <h2>Thông tin sản phẩm</h2>
            <div class="list--sanpham">
                <asp:DataList ID="dlSP" runat="server">
                    <ItemTemplate>
                        <table class="confirm--sanpham">
                            <tr>
                                <td rowspan="3" style="width: 180px; text-align: center">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("img") %>' />
                                </td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Tên mặt hàng:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("tenMH") %>' CssClass="aline"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Số lượng:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("soLuong") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Thành tiền:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("ThanhTien") %>'></asp:Label>
                                    <asp:Label ID="Label12" runat="server" Text="VNĐ"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="text-right confirm--sanpham__row">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Tổng tiền: "></asp:Label>
                <asp:Label ID="lblTongTien" runat="server"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="VNĐ"></asp:Label>
            </div>
            <div class="text-right confirm--sanpham__row">
                    <asp:HyperLink ID="btnBack" runat="server" CssClass="btn--confirm btn--base" NavigateUrl="mua_hang.aspx">Quay lại</asp:HyperLink>
                    <asp:Button ID="btnConfirm" runat="server" Text="Xác nhận &amp; đặt hàng" CssClass="btn--confirm btn--base" OnClick="btnConfirm_Click" />
                </div>
        </div>
        <div class="clear-fix"></div>
    </div>
</asp:Content>


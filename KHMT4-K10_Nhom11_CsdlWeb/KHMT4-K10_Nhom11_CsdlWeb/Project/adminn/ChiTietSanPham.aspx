<%@ Page Title="" Language="C#" MasterPageFile="~/adminn/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="adminn_ChiTietMatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h1>Chi tiết sản phẩm</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [MATHANG] WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh AND [SoLuong] = @original_SoLuong AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND [TinhNang] = @original_TinhNang AND [ThongSoKiThuat] = @original_ThongSoKiThuat AND [BaoHanh] = @original_BaoHanh AND [TuKhoaMH] = @original_TuKhoaMH" InsertCommand="INSERT INTO [MATHANG] ([MaDm], [TenMh], [SoLuong], [DonGia], [HinhAnh], [TinhNang], [ThongSoKiThuat], [BaoHanh], [TuKhoaMH]) VALUES (@MaDm, @TenMh, @SoLuong, @DonGia, @HinhAnh, @TinhNang, @ThongSoKiThuat, @BaoHanh, @TuKhoaMH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MATHANG] WHERE ([MaMh] = @MaMh)" UpdateCommand="UPDATE [MATHANG] SET [MaDm] = @MaDm, [TenMh] = @TenMh, [SoLuong] = @SoLuong, [DonGia] = @DonGia, [HinhAnh] = @HinhAnh, [TinhNang] = @TinhNang, [ThongSoKiThuat] = @ThongSoKiThuat, [BaoHanh] = @BaoHanh, [TuKhoaMH] = @TuKhoaMH WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh">
        <DeleteParameters>
            <asp:Parameter Name="original_MaMh" Type="Int32" />
            <asp:Parameter Name="original_MaDm" Type="Int32" />
            <asp:Parameter Name="original_TenMh" Type="String" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_DonGia" Type="Decimal" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_TinhNang" Type="String" />
            <asp:Parameter Name="original_ThongSoKiThuat" Type="String" />
            <asp:Parameter Name="original_BaoHanh" Type="String" />
            <asp:Parameter Name="original_TuKhoaMH" Type="String" />
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
        <SelectParameters>
            <asp:QueryStringParameter Name="MaMh" QueryStringField="MaMh" Type="Int32" />
        </SelectParameters>
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
            <asp:Parameter Name="original_MaMh" Type="Int32" />
            <asp:Parameter Name="original_MaDm" Type="Int32" />
            <asp:Parameter Name="original_TenMh" Type="String" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_DonGia" Type="Decimal" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_TinhNang" Type="String" />
            <asp:Parameter Name="original_ThongSoKiThuat" Type="String" />
            <asp:Parameter Name="original_BaoHanh" Type="String" />
            <asp:Parameter Name="original_TuKhoaMH" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="MaMh" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>Mã mặt hàng</td>
                    <td>
                        <asp:Label ID="MaMhLabel1" runat="server" Text='<%# Eval("MaMh") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px">Mã danh mục</td>
                    <td style="height: 26px">
                        <asp:TextBox ID="MaDmTextBox" runat="server" Text='<%# Bind("MaDm") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tên mặt hàng</td>
                    <td>
                        <asp:TextBox ID="TenMhTextBox" runat="server" Text='<%# Bind("TenMh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Số lượng</td>
                    <td>
                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Hình ảnh</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="100px" BackColor="#1899ED" />
                        <br />
                        <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Tính năng</td>
                    <td>
                        <asp:TextBox ID="TinhNangTextBox" runat="server" Text='<%# Bind("TinhNang") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Thông số kĩ thuật</td>
                    <td>
                        <asp:TextBox ID="ThongSoKiThuatTextBox" runat="server" Text='<%# Bind("ThongSoKiThuat") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Bảo hành</td>
                    <td>
                        <asp:TextBox ID="BaoHanhTextBox" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Từ khóa mặt hàng</td>
                    <td>
                        <asp:TextBox ID="TuKhoaMHTextBox" runat="server" Text='<%# Bind("TuKhoaMH") %>' />
                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                function readURL(input) {
                    if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var img = document.getElementById("ContentPlaceHolder1_FormView2_Image1");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            MaDm:
            <asp:TextBox ID="MaDmTextBox" runat="server" Text='<%# Bind("MaDm") %>' />
            <br />
            TenMh:
            <asp:TextBox ID="TenMhTextBox" runat="server" Text='<%# Bind("TenMh") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            DonGia:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            TinhNang:
            <asp:TextBox ID="TinhNangTextBox" runat="server" Text='<%# Bind("TinhNang") %>' />
            <br />
            ThongSoKiThuat:
            <asp:TextBox ID="ThongSoKiThuatTextBox" runat="server" Text='<%# Bind("ThongSoKiThuat") %>' />
            <br />
            BaoHanh:
            <asp:TextBox ID="BaoHanhTextBox" runat="server" Text='<%# Bind("BaoHanh") %>' />
            <br />
            TuKhoaMH:
            <asp:TextBox ID="TuKhoaMHTextBox" runat="server" Text='<%# Bind("TuKhoaMH") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px">Mã mặt hàng</td>
                    <td style="height: 20px">
                        <asp:Label ID="MaMhLabel" runat="server" Text='<%# Eval("MaMh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Mã danh mục</td>
                    <td>
                        <asp:Label ID="MaDmLabel" runat="server" Text='<%# Bind("MaDm") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Tên mặt hàng</td>
                    <td>
                        <asp:Label ID="TenMhLabel" runat="server" Text='<%# Bind("TenMh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Số lượng</td>
                    <td>
                        <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Hình ảnh</td>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td>Tính năng</td>
                    <td>
                        <asp:Label ID="TinhNangLabel" runat="server" Text='<%# Bind("TinhNang") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Thông số kĩ thuật</td>
                    <td>
                        <asp:Label ID="ThongSoKiThuatLabel" runat="server" Text='<%# Bind("ThongSoKiThuat") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Bảo hành</td>
                    <td>
                        <asp:Label ID="BaoHanhLabel" runat="server" Text='<%# Bind("BaoHanh") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Từ khóa mặt hàng</td>
                    <td>
                        <asp:Label ID="TuKhoaMHLabel" runat="server" Text='<%# Bind("TuKhoaMH") %>' />
                    </td>
                </tr>
            </table>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" Visible="False" OnClick="EditButton_Click" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" Visible="False" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" Visible="False" />
        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Quay lại" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>


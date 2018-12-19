<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ThemMh.aspx.cs" Inherits="ThemMh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thêm mặt hàng</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [MATHANG] WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh AND [SoLuong] = @original_SoLuong AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND [TinhNang] = @original_TinhNang AND [ThongSoKiThuat] = @original_ThongSoKiThuat AND [BaoHanh] = @original_BaoHanh AND [TuKhoaMH] = @original_TuKhoaMH" InsertCommand="INSERT INTO [MATHANG] ([MaDm], [TenMh], [SoLuong], [DonGia], [HinhAnh], [TinhNang], [ThongSoKiThuat], [BaoHanh], [TuKhoaMH]) VALUES (@MaDm, @TenMh, @SoLuong, @DonGia, @HinhAnh, @TinhNang, @ThongSoKiThuat, @BaoHanh, @TuKhoaMH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MATHANG]" UpdateCommand="UPDATE [MATHANG] SET [MaDm] = @MaDm, [TenMh] = @TenMh, [SoLuong] = @SoLuong, [DonGia] = @DonGia, [HinhAnh] = @HinhAnh, [TinhNang] = @TinhNang, [ThongSoKiThuat] = @ThongSoKiThuat, [BaoHanh] = @BaoHanh, [TuKhoaMH] = @TuKhoaMH WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh AND [SoLuong] = @original_SoLuong AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND [TinhNang] = @original_TinhNang AND [ThongSoKiThuat] = @original_ThongSoKiThuat AND [BaoHanh] = @original_BaoHanh AND [TuKhoaMH] = @original_TuKhoaMH">
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
        <table style="width: 100%">
        <tr>
            <td>Mã danh mục</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mã danh mục không được để trống" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Tên mặt hàng</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên mặt hàng không được để trống" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Số lượng</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Số lượng không được để trống" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Đơn giá</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Đơn giá không được để trống" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Hình ảnh</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                <br />
                <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Hình ảnh không được để trống" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Tính năng</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Thông số kĩ thuật</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Bảo hành</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Từ khóa mặt hàng</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = document.getElementById("ContentPlaceHolder1_Image1");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Thêm mặt hàng" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>


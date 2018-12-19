<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="Mathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Sản phẩm</h2>
    <asp:LinkButton runat="server" ID="addMh" PostBackUrl="ThemMh.aspx" CssClass="btn--base">Thêm</asp:LinkButton>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [MATHANG] WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh" InsertCommand="INSERT INTO [MATHANG] ([MaDm], [TenMh], [SoLuong], [DonGia], [HinhAnh], [TinhNang], [ThongSoKiThuat], [BaoHanh], [TuKhoaMH]) VALUES (@MaDm, @TenMh, @SoLuong, @DonGia, @HinhAnh, @TinhNang, @ThongSoKiThuat, @BaoHanh, @TuKhoaMH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MATHANG]" UpdateCommand="UPDATE [MATHANG] SET [MaDm] = @MaDm, [TenMh] = @TenMh, [SoLuong] = @SoLuong, [DonGia] = @DonGia WHERE [MaMh] = @original_MaMh AND [MaDm] = @original_MaDm AND [TenMh] = @original_TenMh">
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
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaMh" DataSourceID="SqlDataSource1" PageSize="5">
        <Columns>
            <asp:BoundField DataField="MaDm" HeaderText="Mã danh mục" SortExpression="MaDm" />
            <asp:BoundField DataField="TenMh" HeaderText="Tên mặt hàng" SortExpression="TenMh" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" />
            <asp:ImageField DataImageUrlField="HinhAnh" DataImageUrlFormatString="~/frontend/{0}" HeaderText="Ảnh" Visible="False">
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:TemplateField HeaderText="Hình ảnh">
                <EditItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="100px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="100px" />
                </ItemTemplate>
                <ControlStyle BackColor="#1899ED" />
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" OnClick="Button1_Click" Text="Sửa" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField NavigateUrl="~/adminn/ChiTietMatHang.aspx" Text="Chi tiết" DataNavigateUrlFields="MaMh" DataNavigateUrlFormatString="~/adminn/ChiTietSanPham.aspx?MaMh={0}" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = document.getElementById("ContentPlaceHolder1_GridView1_Image2");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <br />
    
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </asp:Content>


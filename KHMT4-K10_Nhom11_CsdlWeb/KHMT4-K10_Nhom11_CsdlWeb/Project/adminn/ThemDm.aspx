<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ThemDm.aspx.cs" Inherits="ThemDm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thêm danh mục</h2>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [DANHMUC] WHERE [MaDm] = @original_MaDm AND [TenDm] = @original_TenDm AND [HinhAnh] = @original_HinhAnh" InsertCommand="INSERT INTO [DANHMUC] ([TenDm], [HinhAnh]) VALUES (@TenDm, @HinhAnh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DANHMUC]" UpdateCommand="UPDATE [DANHMUC] SET [TenDm] = @TenDm, [HinhAnh] = @HinhAnh WHERE [MaDm] = @original_MaDm AND [TenDm] = @original_TenDm AND [HinhAnh] = @original_HinhAnh">
            <DeleteParameters>
                <asp:Parameter Name="original_MaDm" Type="Int32" />
                <asp:Parameter Name="original_TenDm" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenDm" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenDm" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="original_MaDm" Type="Int32" />
                <asp:Parameter Name="original_TenDm" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <table style="width: 100%">
        <tr>
            <td>Tên danh mục</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Tên danh mục không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Hình ảnh</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" BackColor="#1899ED" />
                <br />
                <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" OnDisposed="FileUpload1_Disposed" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Hình ảnh không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
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
    <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>


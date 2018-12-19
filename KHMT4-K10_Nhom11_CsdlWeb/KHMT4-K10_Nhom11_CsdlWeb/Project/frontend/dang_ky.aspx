<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="dang_ky.aspx.cs" Inherits="frontend_dang_ky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabledangki" id="tbdangki">
        <tr>
            <td style="height: 50px; text-align: center" ><asp:Label ID="Label1" runat="server" Text="Đăng ký" Font-Size="XX-Large" ForeColor="Blue"  Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>

                <asp:TextBox ID="txthoten" runat="server" Height="20px" Width="100%" placeholder="Họ và tên*" CssClass="padding_side"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txthoten" Display="Dynamic" ErrorMessage="Họ và tên không được để trống" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td >
                <asp:TextBox ID="txttendn" runat="server" Width="100%" Height="20px" placeholder="Tên đăng nhập*" CssClass="padding_side"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Tên tài khoản không được để trống" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Tài khoản từ 6-30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}" Font-Size="Medium"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:TextBox ID="txtemail" runat="server" Width="100%" Height="20px" placeholder="Email*" CssClass="padding_side"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email không được để trống" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email sai định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Medium"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtmatkhau" runat="server" Width="100%" Height="20px" placeholder="Mật khẩu*" TextMode="Password" CssClass="padding_side"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Mật khẩu từ 6- 30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}" Font-Size="Medium"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtsodienthoai" runat="server" Width="100%" Height="20px" placeholder="Số điện thoại*" CssClass="padding_side"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsodienthoai" Display="Dynamic" ErrorMessage="Số điện thoại không được để trống" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsodienthoai" Display="Dynamic" ErrorMessage=" Sai định dạng" ForeColor="Red" ValidationExpression="0[0-9]{9}" Font-Size="Medium"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" >
                <asp:Button ID="btndangki" runat="server" BackColor="Red" ForeColor="White" Height="36px" Text="Đăng kí" Width="113px"  OnClick="btndangki_Click" BorderWidth="1px" Font-Bold="True" />
                <br />
                <br />
        <asp:Label ID="lblthongbao" runat="server" Font-Size="Medium" ForeColor="Red" CssClass="tdcangiua"></asp:Label>
            </td>
        </tr>
    </table>
          <br />
        <asp:SqlDataSource ID="sqldangki" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [THANHVIEN] WHERE [TenTk] = @TenTk" InsertCommand="INSERT INTO [THANHVIEN] ([TenTk], [Email], [MatKhau], [HoTen], [SoDienThoai], [LoaiTk], [TrangThai]) VALUES (@TenTk, @Email, @MatKhau, @HoTen, @SoDienThoai, @LoaiTk, @TrangThai)" SelectCommand="SELECT * FROM [THANHVIEN] WHERE (([TenTk] = @TenTk) AND ([Email] = @Email) AND ([LoaiTk] = @LoaiTk))" UpdateCommand="UPDATE [THANHVIEN] SET [Email] = @Email, [MatKhau] = @MatKhau, [HoTen] = @HoTen, [SoDienThoai] = @SoDienThoai, [LoaiTk] = @LoaiTk, [TrangThai] = @TrangThai WHERE [TenTk] = @TenTk">
            <DeleteParameters>
                <asp:Parameter Name="TenTk" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenTk" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="SoDienThoai" Type="String" />
                <asp:Parameter Name="LoaiTk" Type="Boolean" />
                <asp:Parameter Name="TrangThai" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txttendn" Name="TenTk" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtemail" Name="Email" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="False" Name="LoaiTk" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="SoDienThoai" Type="String" />
                <asp:Parameter Name="LoaiTk" Type="Boolean" />
                <asp:Parameter Name="TrangThai" Type="Boolean" />
                <asp:Parameter Name="TenTk" Type="String" />
            </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>


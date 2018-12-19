<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tabledangnhap">
        <tr>
            <td colspan="2" style="height: 77px">
    <asp:Label ID="Label3" runat="server" Text="Đăng nhập" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 48px">
                <asp:Label ID="Label1" runat="server" Text="Tài khoản" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 48px; width: 240px">
                <asp:TextBox ID="txttentk" runat="server" Height="26px" Width="230px" placeholder="Tên đăng nhâp*"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttentk" Display="Dynamic" ErrorMessage="Tài khoản không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txttentk" Display="Dynamic" ErrorMessage="Tài khoản từ 6 -30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 39px">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 240px; height: 39px;">
                <asp:TextBox ID="txtpass" runat="server" Height="26px" Width="230px" placeholder="Mật khẩu*" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="Mật khẩu từ 6 -30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 53px" colspan="2">
                <asp:Button ID="btndangnhap" runat="server" Text="Đăng nhập" BackColor="#FF6600" ForeColor="White" Height="37px" Width="131px" OnClick="btndangnhap_Click" style="margin-top: 3px" />
                <br />
                <br />
                <asp:Label ID="lbltongbao" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
        </tr>

    </table>
    <asp:SqlDataSource ID="sqldangnhap" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu4ConnectionString %>" SelectCommand="SELECT * FROM [THANHVIEN] WHERE (([TenTk] = @TenTk) AND ([MatKhau] = @MatKhau) AND ([LoaiTk] = @LoaiTk))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txttentk" Name="TenTk" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtpass" Name="MatKhau" PropertyName="Text" Type="String" />
            <asp:Parameter DefaultValue="True" Name="LoaiTk" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


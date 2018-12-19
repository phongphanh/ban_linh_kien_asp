<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="frontend_danhnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form3" runat="server">--%>
<%--        <table >
            <tr>
                <td>--%>
        <table class="tabledangki">
            <tr>
                <th style="height: 39px;">
                    <asp:Label ID="Label1" runat="server" Text="Đăng nhập" Font-Size="XX-Large" ForeColor="Blue"></asp:Label></th>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txttendn" runat="server" Width="100%" placeholder="Tên đăng nhâp*" Height="20px" CssClass="padding_side"></asp:TextBox>
                    <%--<br />--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Tên đăng nhập không được để trống" ForeColor="Red" Font-Bold="False"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txttendn" Display="Dynamic" ErrorMessage="Tài khoản từ 6 -30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}"></asp:RegularExpressionValidator>
                    <%--<br />--%>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server" Width="100%" placeholder="Mật khẩu*" Height="20px" CssClass="padding_side" style="margin-top: 6px" TextMode="Password"></asp:TextBox>
                    <%--<br />--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" Font-Bold="False"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtmatkhau" Display="Dynamic" ErrorMessage="Mật khẩu từ 6 -30 kí tự" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{6,30}"></asp:RegularExpressionValidator>
                    <%--<br />--%>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Button ID="btndangnhap" runat="server" Text="Đăng nhập" BackColor="Red" ForeColor="White" Height="36px" Width="113px" OnClick="btndangnhap_Click" BorderWidth="1px" Font-Bold="True" />
                    <%--<br />
                    <br />--%>
                    <asp:Label ID="lblthongbao" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                    <br />
                </th>
            </tr>
                        <tr>
                <td style="height: 33px; width: 458px;">
                    <asp:LinkButton ID="lbquenmatkhau" runat="server" Font-Size="Medium" Font-Underline="True" ForeColor="Blue">Quên mật khẩu?</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <asp:ImageButton ID="facebook" runat="server" ImageUrl="~/frontend/images/Facebook1.PNG" ImageAlign="Left" Width="140px" CssClass="cantrai"  />
                   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <asp:ImageButton ID="google" runat="server" ImageUrl="~/frontend/images/google1.png" />
                    <asp:SqlDataSource ID="sqldangnhap" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [THANHVIEN] WHERE (([TenTk] = @TenTk) AND ([MatKhau] = @MatKhau) AND ([LoaiTk] = @LoaiTk) AND ([TrangThai] = @TrangThai))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txttendn" Name="TenTk" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtmatkhau" Name="MatKhau" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="False" Name="LoaiTk" Type="Boolean" />
                            <asp:Parameter DefaultValue="True" Name="TrangThai" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlchecktaikhoan" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [THANHVIEN] WHERE (([TenTk] = @TenTk) AND ([MatKhau] = @MatKhau) AND ([LoaiTk] = @LoaiTk))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txttendn" Name="TenTk" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtmatkhau" Name="MatKhau" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="False" Name="LoaiTk" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlTK" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [THANHVIEN]"></asp:SqlDataSource>
                    <asp:GridView ID="gvTK" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            </table>
<%--           </td>
           </tr>
        </table>--%>
        <br />
        <br />
        <%--</form>--%>
</asp:Content>


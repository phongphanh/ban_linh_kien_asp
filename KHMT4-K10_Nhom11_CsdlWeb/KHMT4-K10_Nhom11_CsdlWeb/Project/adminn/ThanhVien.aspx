<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ThanhVien.aspx.cs" Inherits="ThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thành viên</h2>
    <asp:TextBox ID="txtTenTK" runat="server" CssClass="input--base" placeholder="Nhập tên tài khoản thành viên" Width="200px"></asp:TextBox>
&nbsp;<asp:Button ID="btnTim" runat="server" CssClass="btn--base" Height="30px" OnClick="btnTim_Click" Text="Tìm kiếm" Width="100px" />
    <br />
    <asp:SqlDataSource ID="sqlDsTV" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [THANHVIEN]" DeleteCommand="DELETE FROM [THANHVIEN] WHERE [TenTk] = @TenTk" InsertCommand="INSERT INTO [THANHVIEN] ([TenTk], [Email], [MatKhau], [HoTen], [SoDienThoai], [LoaiTk], [TrangThai]) VALUES (@TenTk, @Email, @MatKhau, @HoTen, @SoDienThoai, @LoaiTk, @TrangThai)" UpdateCommand="UPDATE [THANHVIEN] SET [Email] = @Email, [MatKhau] = @MatKhau, [HoTen] = @HoTen, [SoDienThoai] = @SoDienThoai, [LoaiTk] = @LoaiTk, [TrangThai] = @TrangThai WHERE [TenTk] = @TenTk">
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
    <br />
    <asp:GridView ID="GridViewAll" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TenTk" DataSourceID="sqlDsTV" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%" OnSelectedIndexChanged="GridViewAll_SelectedIndexChanged" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Tên tài khoản" SortExpression="TenTk">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenTk") %>' BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenTk") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                    <br />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mật khẩu" SortExpression="MatKhau">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MatKhau") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MatKhau") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:TemplateField HeaderText="Số điện thoại" SortExpression="SoDienThoai">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SoDienThoai") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                    <br />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loại tài khoản" SortExpression="LoaiTk">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("LoaiTk") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("LoaiTk") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Trạng thái" SortExpression="TrangThai">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("TrangThai") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                    &nbsp;<asp:Button ID="btnXoa" runat="server" CausesValidation="False" CommandName="Delete" OnClick="btnXoa_Click" Text="Xóa" />
                </ItemTemplate>
                <ControlStyle BackColor="#6699FF" Height="30px" Width="75px" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="sqlDstenTK" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [THANHVIEN] WHERE ([TenTk] = @TenTk)" DeleteCommand="DELETE FROM [THANHVIEN] WHERE [TenTk] = @TenTk" InsertCommand="INSERT INTO [THANHVIEN] ([TenTk], [Email], [MatKhau], [SoDienThoai], [LoaiTk]) VALUES (@TenTk, @Email, @MatKhau, @SoDienThoai, @LoaiTk)" UpdateCommand="UPDATE [THANHVIEN] SET [Email] = @Email, [MatKhau] = @MatKhau, [SoDienThoai] = @SoDienThoai, [LoaiTk] = @LoaiTk WHERE [TenTk] = @TenTk">
        <DeleteParameters>
            <asp:Parameter Name="TenTk" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTk" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            
            <asp:Parameter Name="LoaiTk" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTenTK" Name="TenTk" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MatKhau" Type="String" />
            <asp:Parameter Name="LoaiTk" Type="Boolean" />
            <asp:Parameter Name="TenTk" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridViewItem" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TenTk" DataSourceID="sqlDstenTK" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%" OnSelectedIndexChanged="GridViewItem_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Tên tài khoản" SortExpression="TenTk">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenTk") %>' BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TenTk") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                    <br />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mật khẩu" SortExpression="MatKhau">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MatKhau") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MatKhau") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số điện thoại" SortExpression="SoDienThoai">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SoDienThoai") %>' ReadOnly="True" BackColor="#7C6F57" BorderStyle="None" ForeColor="White"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loại tài khoản" SortExpression="LoaiTk">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("LoaiTk") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("LoaiTk") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Trạng thái" SortExpression="TrangThai">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("TrangThai") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật">
            <ControlStyle BackColor="#6699FF" Height="30px" Width="75px" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


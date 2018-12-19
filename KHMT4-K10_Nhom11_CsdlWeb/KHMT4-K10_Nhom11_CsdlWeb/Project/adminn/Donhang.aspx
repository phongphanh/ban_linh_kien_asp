<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Donhang.aspx.cs" Inherits="Donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Đơn hàng</h2>
    <asp:TextBox ID="txtNgayDatHang" runat="server" CssClass="input--base" OnTextChanged="txtMaDH_TextChanged" placeholder="Nhập ngày tháng" Width="200px" TextMode="Date"></asp:TextBox>
<asp:Button ID="btnTimKiem" runat="server" CssClass="btn--base" Text="Tìm kiếm" OnClick="btnTimKiem_Click"/>
<asp:SqlDataSource ID="sqlDsMaDH" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [DONHANG]" DeleteCommand="DELETE FROM [DONHANG] WHERE [MaDh] = @MaDh" InsertCommand="INSERT INTO [DONHANG] ([MaDh], [TenTk], [NguoiNhan], [Email], [DiaChiNhanHang], [SoDienThoai], [TongTien], [NgayDat], [TinhTrang]) VALUES (@MaDh, @TenTk, @NguoiNhan, @Email, @DiaChiNhanHang, @SoDienThoai, @TongTien, @NgayDat, @TinhTrang)" UpdateCommand="UPDATE [DONHANG] SET [TenTk] = @TenTk, [NguoiNhan] = @NguoiNhan, [Email] = @Email, [DiaChiNhanHang] = @DiaChiNhanHang, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien, [NgayDat] = @NgayDat, [TinhTrang] = @TinhTrang WHERE [MaDh] = @MaDh">
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
    <br /><br />

<asp:GridView ID="gridAll" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDh" DataSourceID="sqlDsMaDH" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField HeaderText="Mã đơn hàng" SortExpression="MaDh">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("MaDh") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDh") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tên tài khoản" SortExpression="TenTk">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("TenTk") %>' Width="100px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenTk") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Người nhận" SortExpression="NguoiNhan">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("NguoiNhan") %>' Width="75px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("NguoiNhan") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("Email") %>' Width="100px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Địa chỉ nhận hàng" SortExpression="DiaChiNhanHang">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("DiaChiNhanHang") %>' Width="100px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DiaChiNhanHang") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Số điện thoại" SortExpression="SoDienThoai">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" Text='<%# Bind("SoDienThoai") %>' Width="100px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tổng tiền" SortExpression="TongTien">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("TongTien") %>' Width="75px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("TongTien") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Ngày đặt" SortExpression="NgayDat">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" Text='<%# Bind("NgayDat") %>' Width="200px"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("NgayDat") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CheckBoxField DataField="TinhTrang" HeaderText="Tình trạng" SortExpression="TinhTrang" />
        <asp:HyperLinkField DataNavigateUrlFields="MaDh" DataNavigateUrlFormatString="Chitietdonhang.aspx?MaDh={0}" NavigateUrl="~/adminn/Chitietdonhang.aspx" Text="Chi tiết ..." >
        <ControlStyle ForeColor="#0066FF" Width="70px" />
        </asp:HyperLinkField>
        <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True" UpdateText="Cập nhật" ShowDeleteButton="True" />
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
    <asp:SqlDataSource ID="sqlDsDSDH" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [DONHANG] WHERE ([NgayDat] &gt;= @NgayDat)" DeleteCommand="DELETE FROM [DONHANG] WHERE [MaDh] = @MaDh" InsertCommand="INSERT INTO [DONHANG] ([MaDh], [TenTk], [NguoiNhan], [Email], [DiaChiNhanHang], [SoDienThoai], [TongTien], [NgayDat], [TinhTrang]) VALUES (@MaDh, @TenTk, @NguoiNhan, @Email, @DiaChiNhanHang, @SoDienThoai, @TongTien, @NgayDat, @TinhTrang)" UpdateCommand="UPDATE [DONHANG] SET [TenTk] = @TenTk, [NguoiNhan] = @NguoiNhan, [Email] = @Email, [DiaChiNhanHang] = @DiaChiNhanHang, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien, [NgayDat] = @NgayDat, [TinhTrang] = @TinhTrang WHERE [MaDh] = @MaDh">
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
        <SelectParameters>
            <asp:ControlParameter ControlID="txtNgayDatHang" Name="NgayDat" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
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
    <asp:GridView ID="gridItem" runat="server" AutoGenerateColumns="False" DataKeyNames="MaDh" DataSourceID="sqlDsDSDH" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Mã đơn hàng" SortExpression="MaDh">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Bind("MaDh") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaDh") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên tài khoản" SortExpression="TenTk">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("TenTk") %>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenTk") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Người nhận" SortExpression="NguoiNhan">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#7C6F57" BorderStyle="None" ReadOnly="True" Text='<%# Bind("NguoiNhan") %>' Width="75px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("NguoiNhan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("Email") %>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Địa chỉ nhận hàng" SortExpression="DiaChiNhanHang">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("DiaChiNhanHang") %>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("DiaChiNhanHang") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số điện thoại" SortExpression="SoDienThoai">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("SoDienThoai") %>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tổng tiền" SortExpression="TongTien">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("TongTien") %>' Width="75px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("TongTien") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày đặt" SortExpression="NgayDat">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#7C6F57" BorderStyle="None" ForeColor="White" ReadOnly="True" Text='<%# Bind("NgayDat") %>' Width="200px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("NgayDat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="TinhTrang" HeaderText="Tình trạng" SortExpression="TinhTrang" />
            <asp:HyperLinkField DataNavigateUrlFields="MaDh" DataNavigateUrlFormatString="Chitietdonhang.aspx?MaDh={0}" NavigateUrl="~/adminn/Chitietdonhang.aspx" Text="Chi tiết ...">
            <ControlStyle ForeColor="#0066FF" Width="70px" />
            </asp:HyperLinkField>
            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
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
</asp:Content>


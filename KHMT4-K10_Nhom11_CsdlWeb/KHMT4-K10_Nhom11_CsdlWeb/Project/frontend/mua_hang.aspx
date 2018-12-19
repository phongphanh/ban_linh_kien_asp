<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="mua_hang.aspx.cs" Inherits="dang_ky_thong_tin_mua_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="checkout">
        <h1>Trang đăng ký thông tin mua hàng</h1>
        <div class="checkout__content">
            <div class="checkout__row">
                <div class="col">
                    <div class="checkout--text">
                        Họ và tên
                    </div>
                </div>
                <div class="col">
                    <div class="checkout--input">
                        <asp:TextBox ID="txtHoTen" runat="server" placeholder="Họ và tên"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ và tên không được để trống" ControlToValidate="txtHoTen" ForeColor="red" CssClass="error"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Họ và tên chỉ bao gồm kí tự chữ" ControlToValidate="txtHoTen" ForeColor="Red" CssClass="error" ValidationExpression="\w*"></asp:RegularExpressionValidator>--%>
                    </div>
                </div>
                <div class="clear-fix"></div>
            </div>
            <div class="checkout__row">
                <div class=" col">
                    <div class="checkout--text">
                        Email
                    </div>
                </div>
                <div class=" col">
                    <div class="checkout--input">
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email không được để trống" ControlToValidate="txtEmail" ForeColor="red" CssClass="error"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Sai định dạng email" ControlToValidate="txtEmail" ForeColor="Red" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="clear-fix"></div>
            </div>
            <div class="checkout__row">
                <div class=" col">
                    <div class="checkout--text">
                        Địa chỉ
                    </div>
                </div>
                <div class=" col">
                    <div class="checkout--input">
                        <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Địa chỉ"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Địa chỉ không được để trống" ControlToValidate="txtDiaChi" ForeColor="red" CssClass="error"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Sai định dạng" ControlToValidate="txtDiaChi" ForeColor="Red" CssClass="error" ValidationExpression="\w*"></asp:RegularExpressionValidator>--%>
                    </div>
                </div>
                <div class="clear-fix"></div>
            </div>
            <div class="checkout__row">
                <div class="col">
                    <div class="checkout--text">
                        Số điện thoại
                    </div>
                </div>
                <div class=" col">
                    <div class="checkout--input">
                        <asp:TextBox ID="txtSdt" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Số điện thoại không được để trống" ControlToValidate="txtSdt" ForeColor="red" CssClass="error"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Sai định dạng số điện thoại" ControlToValidate="txtSdt" ForeColor="Red" CssClass="error" ValidationExpression="0[0-9]{9}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="clear-fix"></div>
            </div>
            <div class="checkout__row text-right">
                <asp:HyperLink ID="btnBack" runat="server" CssClass="btn--base" NavigateUrl="gio_hang.aspx">Quay lại</asp:HyperLink>
                <asp:Button Text="Xác nhận" runat="server" ID="btnSubmit" CssClass="btn-submit btn--base" OnClick="btnSubmit_Click"/>
                <asp:SqlDataSource ID="sqlDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [MaDh] = @MaDh" InsertCommand="INSERT INTO [DONHANG] ([TenTk], [NguoiNhan], [Email], [DiaChiNhanHang], [SoDienThoai], [TongTien]) VALUES (@TenTk, @NguoiNhan, @Email, @DiaChiNhanHang, @SoDienThoai, @TongTien)" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [TenTk] = @TenTk, [NguoiNhan] = @NguoiNhan, [Email] = @Email, [DiaChiNhanHang] = @DiaChiNhanHang, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien WHERE [MaDh] = @MaDh">
                    <DeleteParameters>
                        <asp:Parameter Name="MaDh" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TenTk" Type="String" />
                        <asp:Parameter Name="NguoiNhan" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="DiaChiNhanHang" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenTk" Type="String" />
                        <asp:Parameter Name="NguoiNhan" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="DiaChiNhanHang" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Decimal" />
                        <asp:Parameter Name="MaDh" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlMaDm" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlChiTiet" runat="server"></asp:SqlDataSource>
            </div>
        </div>
</asp:Content>


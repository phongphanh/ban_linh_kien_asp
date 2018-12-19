<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="ThongBao.aspx.cs" Inherits="frontend_ThongBao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="order text-center">
        <img src="images/success.jpg" alt="success" class="icon--success" />
        <h3 class="order--title">Đặt hàng thành công</h3>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Mã đơn hàng: "></asp:Label>
            <asp:Label ID="lblMaDonHang" runat="server" Text=""></asp:Label>
        </p>
        <p>Chúc mừng quý khách hàng đã thanh toán thành công đơn hàng. Nhân viên chăm sóc khách hàng của chúng tôi sẽ liên hệ với quý khách hàng khi đơn hàng được xác nhận.<br />
        Chúng tôi sẽ gửi link theo dõi đơn hàng đến Email của quý khách hàng.<br />
        Quý khách hàng cũng có thể theo dõi đơn hàng bằng cách đăng nhập và theo dõi đơn hàng trên website của chúng tôi</p>
        <asp:Button ID="btnContinue" runat="server" Text="Tiếp tục mua hàng" OnClick="btnContinue_Click" CssClass="btn-base" />
    </div>
</asp:Content>


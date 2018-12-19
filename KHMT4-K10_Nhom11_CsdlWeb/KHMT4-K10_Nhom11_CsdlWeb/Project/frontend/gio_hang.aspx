<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="gio_hang.aspx.cs" Inherits="gio_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Giỏ hàng của tôi
        </h2>
    <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" OnRowCommand="gvGioHang_RowCommand">
        <Columns>
            <asp:BoundField DataField="maMH" HeaderText="Mã mặt hàng" />
            <asp:BoundField DataField="tenMH" HeaderText="Tên mặt hàng" />
            <asp:ImageField DataImageUrlField="img" HeaderText="Hình ảnh">
            </asp:ImageField>
            <asp:BoundField DataField="gia" HeaderText="Đơn giá" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSL" runat="server" Text='<%# Eval("SoLuong") %>' TextMode="Number" CssClass="number--item2"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" DataFormatString="{0} VNĐ" />
            <asp:ButtonField ButtonType="Button" Text="Cập nhật" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" runat="server" Text="Không có hàng trong giỏ"></asp:Label>
        </EmptyDataTemplate>
        </asp:GridView>
    
        
    <div class="giohang__bottom">
        <div class="col col-50">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tổng tiền: "></asp:Label>
            <asp:Label ID="lblTongTien" runat="server"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text=" VNĐ"></asp:Label>
        </div>
        <div class="col col-50 text-right">
            <asp:Button ID="btnDelete" runat="server" Text="Xóa giỏ hàng" OnClick="btnDelete_Click" CssClass="btn-base" />
        </div>
        <div class="col col-50">
            <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click1" Text="Tiếp tục mua hàng" CssClass="btn-base" />
        </div>
        <div class="col col-50 text-right">
            <asp:Button ID="btnThanhToan" runat="server" OnClick="btnThanhToan_Click1" Text="Thanh toán" CssClass="btn-base" />
        </div>
        <div class="clear-fix">
        </div>
    </div>
    
        
</asp:Content>


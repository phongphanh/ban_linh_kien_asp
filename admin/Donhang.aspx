<%@ Page Title="" Language="VB" MasterPageFile="MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Donhang.aspx.vb" Inherits="ban_linh_kien_asp_admin_Donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Đơn hàng</h2>
    <input type="search" name="search" value=" " />
    <asp:LinkButton ID="editTv" runat="server" PostBackUrl="chi_tiet_don_hang.aspx" CssClass="button">Xem chi tiết</asp:LinkButton>
</asp:Content>
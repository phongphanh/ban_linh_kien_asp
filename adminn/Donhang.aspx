<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donhang.aspx.cs" Inherits="Donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Đơn hàng</h2>
    <input type="search" name="search" value=" " />
    <asp:LinkButton ID="editTv" runat="server" PostBackUrl="chi_tiet_don_hang.aspx" CssClass="button">Xem chi tiết</asp:LinkButton>
</asp:Content>


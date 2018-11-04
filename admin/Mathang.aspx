<%@ Page Title="" Language="VB" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Mathang.aspx.vb" Inherits="ban_linh_kien_asp_admin_Mathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Mặt hàng</h2>
    <asp:LinkButton runat="server" ID="addMh" PostBackUrl="ThemMh.aspx" CssClass="button">Thêm</asp:LinkButton>
    <asp:LinkButton ID="editMh" runat="server" PostBackUrl="" CssClass="button">Sửa</asp:LinkButton>
    <asp:LinkButton ID="delMh" runat="server" CssClass="button">Xóa</asp:LinkButton>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Thanhvien.aspx.vb" Inherits="ban_linh_kien_asp_admin_Thanhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thành viên</h2>
    <input type="search" name="searchTv" value=" " />
    <asp:LinkButton ID="editTv" runat="server" PostBackUrl="" CssClass="button">Sửa</asp:LinkButton>
    <asp:LinkButton ID="delTv" runat="server" CssClass="button">Xóa</asp:LinkButton>
</asp:Content>


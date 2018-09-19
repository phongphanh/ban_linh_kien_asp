<%@ Page Title="" Language="VB" MasterPageFile="~/ban_linh_kien_asp/admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Danhmuc.aspx.vb" Inherits="ban_linh_kien_asp_admin_Danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Danh mục</h2>
    <div class="btn">
        <asp:LinkButton runat="server" ID="add" PostBackUrl="~/ban_linh_kien_asp/admin/ThemDm.aspx">Thêm</asp:LinkButton>
        <asp:LinkButton ID="edit" runat="server" PostBackUrl="~/ban_linh_kien_asp/admin/SuaDm.aspx">Sửa</asp:LinkButton>
        <asp:LinkButton ID="del" runat="server">Xóa</asp:LinkButton>
    </div>
</asp:Content>


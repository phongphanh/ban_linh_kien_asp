<%@ Page Title="" Language="VB" MasterPageFile="MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Danhmuc.aspx.vb" Inherits="ban_linh_kien_asp_admin_Danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Danh mục</h2>
    <div class="btn">
        <asp:LinkButton runat="server" ID="add" PostBackUrl="ThemDm.aspx" CssClass="button">Thêm</asp:LinkButton>
        <asp:LinkButton ID="edit" runat="server" PostBackUrl="SuaDm.aspx" CssClass="button">Sửa</asp:LinkButton>
        <asp:LinkButton ID="del" runat="server" CssClass="button">Xóa</asp:LinkButton>
    </div>
</asp:Content>


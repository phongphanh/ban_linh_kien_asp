<%@ Page Title="" Language="VB" MasterPageFile="~/ban_linh_kien_asp/admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="Mathang.aspx.vb" Inherits="ban_linh_kien_asp_admin_Mathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Mặt hàng</h2>
    <asp:LinkButton runat="server" ID="addMh" PostBackUrl="~/ban_linh_kien_asp/admin/ThemMh.aspx">Thêm</asp:LinkButton>
    <asp:LinkButton ID="editMh" runat="server" PostBackUrl="~/ban_linh_kien_asp/admin/SuaMh.aspx">Sửa</asp:LinkButton>
    <asp:LinkButton ID="delMh" runat="server">Xóa</asp:LinkButton>
</asp:Content>


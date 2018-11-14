<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Danhmuc.aspx.cs" Inherits="Danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Danh mục</h2>
    <div class="btn">
        <asp:LinkButton runat="server" ID="add" PostBackUrl="ThemDm.aspx" CssClass="button">Thêm</asp:LinkButton>
        <asp:LinkButton ID="edit" runat="server" PostBackUrl="" CssClass="button">Sửa</asp:LinkButton>
        <asp:LinkButton ID="del" runat="server" CssClass="button">Xóa</asp:LinkButton>
    </div>
</asp:Content>


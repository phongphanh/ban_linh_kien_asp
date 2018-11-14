<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mathang.aspx.cs" Inherits="Mathang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Mặt hàng</h2>
    <asp:LinkButton runat="server" ID="addMh" PostBackUrl="ThemMh.aspx" CssClass="button">Thêm</asp:LinkButton>
    <asp:LinkButton ID="editMh" runat="server" PostBackUrl="" CssClass="button">Sửa</asp:LinkButton>
    <asp:LinkButton ID="delMh" runat="server" CssClass="button">Xóa</asp:LinkButton>
</asp:Content>


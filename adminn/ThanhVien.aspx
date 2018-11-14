<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThanhVien.aspx.cs" Inherits="ThanhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thành viên</h2>
    <input type="search" name="searchTv" value=" " />
    <asp:LinkButton ID="editTv" runat="server" PostBackUrl="" CssClass="button">Sửa</asp:LinkButton>
    <asp:LinkButton ID="delTv" runat="server" CssClass="button">Xóa</asp:LinkButton>
</asp:Content>


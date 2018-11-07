<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>Đây là trang chủ</h1>
            <asp:SqlDataSource ID="sqlMH" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu5ConnectionString %>" SelectCommand="SELECT * FROM [MATHANG]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaMh" DataSourceID="sqlMH" RepeatColumns="4" CssClass="content__view" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div class="item">
                    <div class="item-img">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                    </div>
                    <div class="item-text">
                        <p><asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' CssClass="price"/></p>
                        <p><asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' CssClass="name"/></p>
                        <p>
                            <a class="btn btn-primary" href="chitietsanpham.aspx">
                                <span>Xem chi tiết</span>
                            </a>
                            <button class="btn btn-primary">
                                <span>Thêm vào giỏ</span>
                            </button>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        
    </form>
</asp:Content>
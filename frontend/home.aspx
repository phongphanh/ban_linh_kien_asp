<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form3" runat="server">
        <h1>Đây là trang chủ</h1>
            <asp:SqlDataSource ID="sqlMH" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT [HinhAnh], [DonGia], [TenMh], [MaMh] FROM [MATHANG]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="sqlMH" RepeatColumns="4" CssClass="content__view" OnItemCommand="DataList1_ItemCommand" DataKeyField="MaMh">
            
            <%--<ItemTemplate>
             0   HinhAnh:
                <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                <br />
                DonGia:
                <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' />
                <br />
                TenMh:
                <asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' />
                <br />
                MaMh:
                <asp:Label ID="MaMhLabel" runat="server" Text='<%# Eval("MaMh") %>' />
                <br />
                <br />
            </ItemTemplate>--%>
            <ItemTemplate>
                <div class="item">
                    <div class="item-img">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                    </div>
                    <div class="item-text">
                        <p><asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DonGia") %>' CssClass="price"/></p>
                        <p><asp:Label ID="TenMhLabel" runat="server" Text='<%# Eval("TenMh") %>' CssClass="name"/></p>
                        <p>
                            <asp:hyperlink id="viewchitiet" runat="server" cssclass="btn btn-primary" navigateurl='<%# ("chitietsanpham.aspx?MaMh=") + Eval("MaMh") %>'>
                                <span>xem chi tiết</span>
                            </asp:hyperlink>
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
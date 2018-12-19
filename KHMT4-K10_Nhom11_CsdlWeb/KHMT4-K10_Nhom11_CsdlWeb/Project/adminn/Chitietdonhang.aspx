<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Chitietdonhang.aspx.cs" Inherits="Chitietdonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Chi tiết đơn hàng</h2>
    <asp:SqlDataSource ID="sqlDsChiTiet" runat="server" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" SelectCommand="SELECT * FROM [ChiTietDonHang] WHERE ([MaDh] = @MaDh)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDh" QueryStringField="MaDh" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageAlign="Middle" ImageUrl="~/adminn/images/back.jpg" PostBackUrl="~/adminn/Donhang.aspx" Width="50px" />
        <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Font-Overline="False" ForeColor="#0066FF" Height="20px" PostBackUrl="~/adminn/Donhang.aspx" Text="Quay lại đơn hàng" Width="120px" />
    </div><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaDh,MaMh" DataSourceID="sqlDsChiTiet" Font-Italic="False" ForeColor="#333333" GridLines="None" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaDh" HeaderText="Mã đơn hàng" ReadOnly="True" SortExpression="MaDh">
            <FooterStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="MaMh" HeaderText="Mã mặt hàng" ReadOnly="True" SortExpression="MaMh" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
            <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" SortExpression="ThanhTien" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    </asp:Content>


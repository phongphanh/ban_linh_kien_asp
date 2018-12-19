<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Danhmuc.aspx.cs" Inherits="Danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="content--title">Danh mục</h2>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ThietBiDienTu %>" DeleteCommand="DELETE FROM [DANHMUC] WHERE [MaDm] = @original_MaDm AND [TenDm] = @original_TenDm" InsertCommand="INSERT INTO [DANHMUC] ([TenDm], [HinhAnh]) VALUES (@TenDm, @HinhAnh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DANHMUC]" UpdateCommand="UPDATE [DANHMUC] SET [TenDm] = @TenDm, [HinhAnh] = @HinhAnh WHERE [MaDm] = @original_MaDm AND [TenDm] = @original_TenDm AND [HinhAnh] = @original_HinhAnh">
            <DeleteParameters>
                <asp:Parameter Name="original_MaDm" Type="Int32" />
                <asp:Parameter Name="original_TenDm" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenDm" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenDm" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="original_MaDm" Type="Int32" />
                <asp:Parameter Name="original_TenDm" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
         <asp:LinkButton runat="server" ID="add" PostBackUrl="ThemDm.aspx" CssClass="btn--base">Thêm mới</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MaDm" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:BoundField DataField="MaDm" HeaderText="Mã danh mục" InsertVisible="False" ReadOnly="True" SortExpression="MaDm" />
                <asp:BoundField DataField="TenDm" HeaderText="Tên danh mục" SortExpression="TenDm" />
                <asp:ImageField DataImageUrlField="HinhAnh" HeaderText="Ảnh" DataImageUrlFormatString="~/frontend/{0}" Visible="False">
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
                <asp:TemplateField HeaderText="Ảnh">
                    <EditItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="100px" />
                        <br />
                        <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl='<%# Eval("HinhAnh", "~/frontend/{0}") %>' Width="50px" />
                    </ItemTemplate>
                    <ControlStyle BackColor="#1899ED" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <script type="text/javascript">
                function readURL(input) {
                    if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var img = document.getElementById("ContentPlaceHolder1_GridView1_Image1");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
        <br />
       
</asp:Content>


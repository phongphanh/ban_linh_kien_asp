using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemMh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["MaDm"].DefaultValue = TextBox1.Text;
        SqlDataSource1.InsertParameters["TenMh"].DefaultValue = TextBox2.Text;
        SqlDataSource1.InsertParameters["SoLuong"].DefaultValue = TextBox3.Text;
        SqlDataSource1.InsertParameters["DonGia"].DefaultValue = TextBox4.Text;
        SqlDataSource1.InsertParameters["HinhAnh"].DefaultValue = "images/icon/"+FileUpload1.FileName;
        SqlDataSource1.InsertParameters["TinhNang"].DefaultValue = TextBox5.Text;
        SqlDataSource1.InsertParameters["ThongSoKiThuat"].DefaultValue = TextBox6.Text;
        SqlDataSource1.InsertParameters["BaoHanh"].DefaultValue = TextBox7.Text;
        SqlDataSource1.InsertParameters["TuKhoaMH"].DefaultValue = TextBox8.Text;
        try
        {
            if (Page.IsValid && FileUpload1.HasFile)
            {
                string fileName = "~/frontend/images/icon/" + FileUpload1.FileName;
                string filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
            }
            SqlDataSource1.Insert();
            Label1.Text = "Thêm mặt hàng thành công";
        }
        catch(Exception ex)
        {
            Label1.Text = "Thêm mặt hàng thất bại. Lỗi "+ex.Message;
        }
        
    }
}
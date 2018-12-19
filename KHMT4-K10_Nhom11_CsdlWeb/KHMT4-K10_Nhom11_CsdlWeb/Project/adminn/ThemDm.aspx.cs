using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemDm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (TextBox1.Text == "" || FileUpload1.ToString() == "")
        //{
            
       // }
       // else
       // {
            SqlDataSource1.InsertParameters["TenDm"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["HinhAnh"].DefaultValue = "images/icon/"+FileUpload1.FileName;
            try
            {
            if (Page.IsValid && FileUpload1.HasFile)
            {
                string fileName = "~/frontend/images/icon/" + FileUpload1.FileName;
                string filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
            }
                SqlDataSource1.Insert();
                Label1.Text = "Thêm thành công";
                Response.Redirect("Danhmuc.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "Thêm thất bại, lỗi " + ex.Message;
            }
       // }
        
    }

    protected void FileUpload1_Disposed(object sender, EventArgs e)
    {
        //Image1.ImageUrl = FileUpload1.;
    }

    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
    }
}

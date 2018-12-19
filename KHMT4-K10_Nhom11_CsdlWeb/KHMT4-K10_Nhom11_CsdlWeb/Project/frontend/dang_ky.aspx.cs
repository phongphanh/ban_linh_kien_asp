using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frontend_dang_ky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Cart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }

        //set number cart
        int numberCart = aCart.items.Count;
        Label number = (Label)this.Master.FindControl("lblNumberCart");
        number.Text = numberCart.ToString();
    }
    protected void btndangki_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqldangki.Select(DataSourceSelectArguments.Empty);
        //int num = 0;
        int num = dv.Count;
        sqldangki.InsertParameters["TenTk"].DefaultValue = txttendn.Text;
        sqldangki.InsertParameters["Email"].DefaultValue = txtemail.Text;
        sqldangki.InsertParameters["MatKhau"].DefaultValue = txtmatkhau.Text;
        sqldangki.InsertParameters["HoTen"].DefaultValue = txthoten.Text;
        sqldangki.InsertParameters["SoDienThoai"].DefaultValue = txtsodienthoai.Text;
        sqldangki.InsertParameters["LoaiTk"].DefaultValue = "False";
        sqldangki.InsertParameters["TrangThai"].DefaultValue = "True";
        try
        {
            if (num == 0)
            {
                sqldangki.Insert();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng kí thành công!')", true);
                Session["LogIn"] = true;
                Session["dk"] = true;
                //Session["HoTen"] = txttendn.Text;
                User objuser = new User();
                objuser.username = txttendn.Text;
                objuser.password = txtmatkhau.Text;
                Session.Add("User", objuser);
                //HttpCookie userinfo = new HttpCookie("User");
                //userinfo["TenDN"] = txttendn.Text;
                //userinfo["MatKhau"] = txtmatkhau.Text;
                //userinfo.Expires = DateTime.Now.AddMonths(3);
                //Response.Cookies.Add(userinfo);
                Response.Redirect("home.aspx");

            }
            else
            {
                lblthongbao.Text = "Tên đăng nhập hoặc email đã tồn tại";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng ký không thành công!')", true);
        }
    }
}
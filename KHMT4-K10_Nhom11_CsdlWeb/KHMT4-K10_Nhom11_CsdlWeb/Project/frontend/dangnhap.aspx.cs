using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frontend_danhnhap : System.Web.UI.Page
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
    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqldangnhap.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        DataView dv1 = (DataView)sqlchecktaikhoan.Select(DataSourceSelectArguments.Empty);
        int num1 = dv1.Count;
        if (num1 > 0)
        {
            if (num == num1)
            {
                
                sqlTK.SelectCommand = "select [Email], [HoTen], [SoDienThoai] from [THANHVIEN] where [TenTK] = '" + txttendn.Text + "'";
                gvTK.DataSource = sqlTK;
                gvTK.DataBind();


                User objuser = new User();
                objuser.username = txttendn.Text;
                objuser.password = txtmatkhau.Text;
                objuser.hoten = HttpUtility.HtmlDecode(gvTK.Rows[0].Cells[1].Text);
                objuser.email = gvTK.Rows[0].Cells[0].Text;
                objuser.sdt = gvTK.Rows[0].Cells[2].Text;
                objuser.diachi = "";
                Session.Add("User", objuser);
                Session["LogIn"] = true;
                Session["dn"] = true;
                Response.Redirect("home.aspx");
            }
            else
            {
                lblthongbao.Text = "Tài khoản của bạn đã bị khóa!";
            }
        }
        else
        {
            lblthongbao.Text = "Tài khoản hoặc mật khẩu không đúng!!!";
        }
    }
}
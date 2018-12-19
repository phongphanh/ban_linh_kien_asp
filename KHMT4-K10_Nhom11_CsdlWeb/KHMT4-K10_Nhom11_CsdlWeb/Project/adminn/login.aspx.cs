using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminn_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqldangnhap.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        DataView dv1 = (DataView)sqlchecktaikhoan.Select(DataSourceSelectArguments.Empty);
        int num1 = dv1.Count;
        if (num1 > 0)
        {
            if(num==num1)
            {
                //sqldangnhap.UpdateCommand = "UPDATE THANHVIEN SET [TrangThai] = 'True' WHERE [TenTk]='" + txttentk.Text + "'";
                //sqldangnhap.Update();
                User objuser = new User();
                objuser.username = txttentk.Text;
                objuser.password = txtpass.Text;
                Session.Add("UserAD", objuser);
                Session["LogInAD"] = true;
                Session["HoTenAD"] = txttentk.Text;
                Session["dnAD"] = true;
                Response.Redirect("Admin_home.aspx");
            }
            else
            {
                lbltongbao.Text = "Tài khoản đã bị khóa";
            }
        }
        else
        {
            lbltongbao.Text = "Sai tài khoản hoặc mật khẩu!!!";
        }
    }
}
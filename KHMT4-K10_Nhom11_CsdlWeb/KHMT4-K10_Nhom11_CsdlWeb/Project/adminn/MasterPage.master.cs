using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LogInAD"] == null || (bool)Session["LogInAD"] == false)
        {
            logInAD.Visible = false;
            notLoginAD.Visible = true;
        }
        else
        {
            logInAD.Visible = true;
            notLoginAD.Visible = false;
            lblusernameAD.Text = (string)(Session["HoTenAD"]);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng nhập thành công!')", true);
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        //sqlUpdateThanhVien.UpdateCommand= "UPDATE THANHVIEN SET [TrangThai] = 'False' WHERE [TenTk]='" +lblusernameAD.Text+ "'";
        //sqlUpdateThanhVien.Update();
        Session["LogInAD"] = false;
        Response.Redirect("~/frontend/home.aspx");
    }
}

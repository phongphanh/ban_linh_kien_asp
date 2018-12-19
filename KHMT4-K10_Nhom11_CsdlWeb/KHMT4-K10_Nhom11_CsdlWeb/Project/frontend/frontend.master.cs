using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frontend : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LogIn"] == null || (bool)Session["LogIn"] == false)
        {

            logIn.Visible = false;
            notLogin.Visible = true;
            btnLogOut.Visible = false;
            notLogin1.Visible = true;
        }
        else
        {
            logIn.Visible = true;
            notLogin.Visible = false;
            btnLogOut.Visible = true;
            notLogin1.Visible = false;
            User objuser = new User();
            objuser = (User)Session["User"];
            lblusername.Text = objuser.username;
            //lblusername.Text = (string)(Session["HoTen"]);

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng nhập thành công!')", true);
        }

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
        lblNumberCart.Text = numberCart.ToString();
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        //sqlupdatethanhvien.UpdateCommand = "UPDATE THANHVIEN SET [TrangThai]='False' WHERE [TenTk]='" +lblusername.Text+ "'";
        //sqlupdatethanhvien.Update();
        Session["LogIn"] = false;
        Session.Remove("User");
        Session.Remove("Cart");
        Response.Redirect("home.aspx");
    }
}

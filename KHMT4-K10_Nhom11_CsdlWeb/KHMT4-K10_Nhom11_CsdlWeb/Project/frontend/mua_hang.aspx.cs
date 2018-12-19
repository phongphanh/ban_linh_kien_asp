using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dang_ky_thong_tin_mua_hang : System.Web.UI.Page
{

    Cart aCart;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        if (!IsPostBack)
        {
            if (Session["User"] == null)
            {

            }
            else {
                User currentUser = (User)Session["user"];
                txtEmail.Text = currentUser.email;
                txtHoTen.Text = currentUser.hoten;
                txtSdt.Text = currentUser.sdt;
                txtDiaChi.Text = currentUser.diachi;
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        

        if (Session["User"] == null)
        {
            User obj = new User();
            obj.hoten = txtHoTen.Text;
            obj.email = txtEmail.Text;
            obj.diachi = txtDiaChi.Text;
            obj.sdt = txtSdt.Text;
            obj.username = "guest";
            obj.password = "";
            Session.Add("User", obj);
        }
        else
        {
            User currentUser = (User)Session["User"];
            currentUser.diachi = txtDiaChi.Text;
        }

        Response.Redirect("xac_nhan_don_hang.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //User Login
        if (Session["dn"] != null && (bool)Session["dn"] == true)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng nhập thành công!')", true);
            Session["dn"] = false;
        }
        if (Session["dk"] != null && (bool)Session["dk"] == true)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng kí thành công!')", true);
            Session["dk"] = false;
        }

        //Cart
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

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            //ListViewItem itemClicked = e.Item;
            string tenMH = ((HyperLink)e.Item.FindControl("lblTenMH")).Text;
            string imgSource = ((HyperLink)e.Item.FindControl("img")).ImageUrl;
            int maMH = Convert.ToInt32(((Label)e.Item.FindControl("lblMaMh")).Text);
            decimal donGia = Convert.ToDecimal(((Label)e.Item.FindControl("DonGiaLabel")).Text);
            Cart aCart;
            if (Session["Cart"] == null)
            {
                aCart = new Cart();
            }
            else
            {
                aCart = (Cart)Session["Cart"];
            }
            aCart.InsertItem(maMH, imgSource, tenMH, donGia, 1);
            Session["Cart"] = aCart;

            Response.Redirect("gio_hang.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('Error');</script>");
        }
    }
}
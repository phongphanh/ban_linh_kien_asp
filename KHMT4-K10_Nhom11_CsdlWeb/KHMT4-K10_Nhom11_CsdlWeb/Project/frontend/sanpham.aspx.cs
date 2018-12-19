using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frontend_danhmuc : System.Web.UI.Page
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

        //title
        txtTitle.Text = gridTenDm.Rows[0].Cells[0].Text;
    }
    protected void DataList3_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            string tenMH = ((HyperLink)e.Item.FindControl("tenMh")).Text;
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sanpham : System.Web.UI.Page
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

        //Set number cart
        int numberCart = aCart.items.Count;
        Label number = (Label)this.Master.FindControl("lblNumberCart");
        number.Text = numberCart.ToString();

        
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            string tenMH = ((Label)e.Item.FindControl("TenMhLabel")).Text;
            string imgSource = ((Image)e.Item.FindControl("Image2")).ImageUrl;
            int maMH = Convert.ToInt32(((Label)e.Item.FindControl("MaMhLabel")).Text);
            decimal donGia = Convert.ToDecimal(((Label)e.Item.FindControl("DonGiaLabel")).Text);
            int sl = Convert.ToInt32(((TextBox)e.Item.FindControl("txtSoLuong")).Text);
            Cart aCart;
            if (Session["Cart"] == null)
            {
                aCart = new Cart();
            }
            else
            {
                aCart = (Cart)Session["Cart"];
            }
            aCart.InsertItem(maMH, imgSource, tenMH, donGia, sl);
            Session["Cart"] = aCart;

            Response.Redirect("gio_hang.aspx");
        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('Error');</script>");
        }
    }
    protected void txtSoLuong_TextChanged(object sender, EventArgs e)
    {
        
    }
}
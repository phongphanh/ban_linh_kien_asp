using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class video_huong_dan : System.Web.UI.Page
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
}
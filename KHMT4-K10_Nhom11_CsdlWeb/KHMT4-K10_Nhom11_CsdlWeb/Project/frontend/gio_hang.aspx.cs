using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gio_hang : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            BindData(aCart);
        }
    }

    public void BindData(Cart aCart)
    {
        gvGioHang.DataSource = aCart.items;
        gvGioHang.DataBind();
        lblTongTien.Text = aCart.TongTien.ToString();

        //set number cart
        int numberCart = aCart.items.Count;
        Label number = (Label)this.Master.FindControl("lblNumberCart");
        number.Text = numberCart.ToString();
    }
    protected void btnThanhToan_Click1(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gvGioHang.Rows)
        {
            int rowID = row.RowIndex;
            int soluong = Convert.ToInt32(((TextBox)row.Cells[4].FindControl("txtSL")).Text);
            //Response.Write(@"<script language='javascript'>alert('"+rowID.ToString()+"');</script>");
            aCart.UpdateItem(rowID, soluong);
        }
        Response.Redirect("mua_hang.aspx");
    }
    protected void btnContinue_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        lblTongTien.Text = "";
        Response.Redirect("home.aspx");
    }
    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);

        int maMH = Convert.ToInt32(gvGioHang.Rows[rowIndex].Cells[0].Text);

        TextBox txtSL = (TextBox)gvGioHang.Rows[rowIndex].FindControl("txtSL");
        int sl = Convert.ToInt32(txtSL.Text);

        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }

        int rowID = aCart.getIndex(maMH);

        aCart.UpdateItem(rowID, sl);

        BindData(aCart);

        Session["Cart"] = aCart;
    }
}
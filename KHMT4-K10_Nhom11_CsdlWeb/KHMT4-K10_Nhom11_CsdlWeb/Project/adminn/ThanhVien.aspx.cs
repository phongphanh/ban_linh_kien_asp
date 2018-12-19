using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThanhVien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTim_Click(object sender, EventArgs e)
    {
        if (txtTenTK.Text == "")
        {
            GridViewAll.Visible = true;
            GridViewItem.Visible = false;
        }
        else
        {
            GridViewAll.Visible = false;
            GridViewItem.Visible = true;
        }
    }

    protected void btnSua_Click(object sender, EventArgs e)
    {

    }
    protected void GridViewItem_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridViewAll_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnXoa_Click(object sender, EventArgs e)
    {
        CheckBox a = (CheckBox)GridViewItem.FindControl("CheckBox2");
        
        
    }
}
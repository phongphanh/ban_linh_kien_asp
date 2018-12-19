using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Donhang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtMaDH_TextChanged(object sender, EventArgs e)
    {
        
    }
   
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        if (txtNgayDatHang.Text == "")
        {
            gridAll.Visible = true;
            gridItem.Visible = false;
        }
        else
        {
            gridAll.Visible = false;
            gridItem.Visible = true;
            gridItem.DataBind();
        }
        
    }
}
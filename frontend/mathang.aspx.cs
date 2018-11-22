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

    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "item")
        {
            Response.Redirect("chitietsanpham.aspx?MaMh=" + Eval("MaMh"));
           
        }
        else { 
            
        }
    }
}
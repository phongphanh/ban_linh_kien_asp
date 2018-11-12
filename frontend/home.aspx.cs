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
        
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);

    }
}
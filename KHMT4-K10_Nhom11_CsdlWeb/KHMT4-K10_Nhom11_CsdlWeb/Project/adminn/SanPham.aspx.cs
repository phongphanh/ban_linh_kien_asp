using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mathang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlDataSource1.UpdateParameters["HinhAnh"]= GridView1.FindControl("FileUpload1").ToString();
    }
}
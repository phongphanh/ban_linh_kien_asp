﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminn_ChiTietMatHang : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=KURUMITOKISAKI\DAOTINH;Initial Catalog=ThietBiDienTu;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mathang.aspx");
    }

    protected void EditButton_Click(object sender, EventArgs e)
    {
        
    }
}
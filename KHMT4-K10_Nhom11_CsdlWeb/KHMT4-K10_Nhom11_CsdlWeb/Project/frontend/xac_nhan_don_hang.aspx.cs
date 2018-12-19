using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class xac_nhan_don_hang : System.Web.UI.Page
{
    User currentUser;
    Cart aCart;
    //public System.Data.SqlClient.SqlTransaction BeginTransaction();
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
        //set number cart
        int numberCart = aCart.items.Count;
        Label number = (Label)this.Master.FindControl("lblNumberCart");
        number.Text = numberCart.ToString();

        if (Session["User"] == null)
        {
            currentUser = new User();
        }
        else {
            currentUser = (User)Session["User"];        
        }
        //Get infor user into textbox

        if (!IsPostBack) {
            lblHoTen.Text = currentUser.hoten;
            lblEmail.Text = currentUser.email;
            lblDiaChi.Text = currentUser.diachi;
            lblSDT.Text = currentUser.sdt;
            dlSP.DataSource = aCart.items;
            dlSP.DataBind();
            lblTongTien.Text = aCart.TongTien.ToString();
        }
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        //get MaDH
        int id = new Random().Next(1, 10000);
        sqlCheckMa.SelectCommand = "select * from [DONHANG] where [MaDh] = " + id.ToString();
        DataView dv = (DataView)sqlCheckMa.Select(DataSourceSelectArguments.Empty);
        while (dv.Count > 0)
        {
            id = new Random().Next(1, 10000);
            sqlCheckMa.SelectCommand = "select * from [DONHANG] where [MaDh] = " + id.ToString();
            dv = (DataView)sqlCheckMa.Select(DataSourceSelectArguments.Empty);
        }
        //End get MaMH
        if (Session["Cart"] == null)
        {
            aCart = new Cart();
        }
        else
        {
            aCart = (Cart)Session["Cart"];
        }

        if (Session["User"] == null)
        {
            currentUser = new User();
        }
        else
        {
            currentUser = (User)Session["User"];
        }

        //Get insertParameters
        sqlDonHang.InsertParameters["MaDh"].DefaultValue = id.ToString();
        sqlDonHang.InsertParameters["TenTk"].DefaultValue = currentUser.username;
        sqlDonHang.InsertParameters["NguoiNhan"].DefaultValue = currentUser.hoten;
        sqlDonHang.InsertParameters["Email"].DefaultValue = currentUser.email;
        sqlDonHang.InsertParameters["DiaChiNhanHang"].DefaultValue = currentUser.diachi;
        sqlDonHang.InsertParameters["SoDienThoai"].DefaultValue = currentUser.sdt;
        sqlDonHang.InsertParameters["TongTien"].DefaultValue = aCart.TongTien.ToString();
        sqlDonHang.InsertParameters["NgayDat"].DefaultValue = DateTime.Now.ToShortDateString();
        sqlDonHang.InsertParameters["TinhTrang"].DefaultValue = "false";

        try
        {

            sqlDonHang.Insert();
            foreach (var item in aCart.items)
            {
                sqlChiTiet.InsertParameters["MaDh"].DefaultValue = id.ToString();
                sqlChiTiet.InsertParameters["MaMh"].DefaultValue = item.maMH.ToString();
                sqlChiTiet.InsertParameters["SoLuong"].DefaultValue = item.soLuong.ToString();
                sqlChiTiet.InsertParameters["ThanhTien"].DefaultValue = item.ThanhTien.ToString();
                sqlChiTiet.Insert();

                sqlSL.SelectCommand = "select [SoLuong] from [MATHANG] where [MaMh] = '" + item.maMH.ToString() + "'";
                gridSL.DataBind();
                int sl = Convert.ToInt32(gridSL.Rows[0].Cells[0].Text);

                int currentSL = sl - item.soLuong;
                sqlUpdate.UpdateCommand = "update [MATHANG] set [SoLuong] = '" + currentSL.ToString() + "' where [MaMh] = '" + item.maMH.ToString() + "'";
                sqlUpdate.Update();
            }
            Session.Remove("Cart");

            Response.Redirect("ThongBao.aspx?MaDH=" + id.ToString());
        }
        catch (Exception ex)
        {
            Response.Write(@"<script language='javascript'>alert('Lỗi');</script>");
        }

    }
}
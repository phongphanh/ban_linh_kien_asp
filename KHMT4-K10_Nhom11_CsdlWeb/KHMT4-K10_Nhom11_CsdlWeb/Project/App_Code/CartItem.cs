using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{

    public int maMH { get; set; }
    public string img { get; set; }
    public string tenMH { get; set; }
    public decimal gia { get; set; }
    public int soLuong { get; set; }

    private decimal _thanhTien;
    public decimal ThanhTien
    {
        get
        {
            _thanhTien = gia * soLuong;
            return _thanhTien;
        }
    }

    public CartItem(int ma, string img, string ten, decimal gia, int sl)
    {
        this.maMH = ma;
        this.img = img;
        this.tenMH = ten;
        this.gia = gia;
        this.soLuong = sl;
    }
}
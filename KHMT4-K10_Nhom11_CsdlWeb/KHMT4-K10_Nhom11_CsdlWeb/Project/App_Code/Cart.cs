using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    public List<CartItem> items { get; set; }
    private decimal _tongTien;
    public decimal TongTien
    {
        get
        {
            _tongTien = 0;
            if (items != null)
            {
                foreach (var item in items)
                {
                    _tongTien += item.ThanhTien;
                }
            }
            return _tongTien;
        }
    }

    public Cart()
    {
        if (this.items == null)
        {
            this.items = new List<CartItem>();
        }
    }

    public int getIndex(int ma)
    {
        int index = 0;
        foreach (var item in this.items)
        {
            if (item.maMH == ma)
            {
                //neu tim thay mat hang trong gio
                return index;
            }
            index++;
        }
        return -1; //Neu khong tim duoc mat hang trong gio
    }

    //them hang vao gio
    public void InsertItem(int ma, string img, string ten, decimal gia, int sl)
    {
        int index = this.getIndex(ma);
        if (index == -1)
        {
            CartItem anItem = new CartItem(ma, img, ten, gia, sl);
            items.Add(anItem);
        }
        else
        {
            items[index].soLuong += sl;
        }
    }

    //xoa hang khoi gio
    public void DeleteItem(int rowID)
    {
        items.RemoveAt(rowID);
    }

    //cap nhat so luong hang
    public void UpdateItem(int rowID, int sl)
    {
        if (sl == 0)
        {
            DeleteItem(rowID);
        }
        else
        {
            CartItem updateItem = items[rowID]; //lay mh can sua
            updateItem.soLuong = sl;
        }
    }
}
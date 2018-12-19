<%@ Page Title="" Language="C#" MasterPageFile="~/frontend/frontend.master" AutoEventWireup="true" CodeFile="video_huong_dan.aspx.cs" Inherits="video_huong_dan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="video">
        <h2 class="video--title text-center">Hướng dẫn mua hàng bằng video</h2>
        <p>Xin chào quý khách hàng</p>
        <p>Để thuận lợi và dễ dàng cho việc đặt mua Linh Kiện. Linh Kiện Điện Tử Minh Hà xin hướng dẫn cách đặt hàng bằng video.</p>
        <p class="bold">
            <span>P/S: Quý khách vẫn có thể đặt hàng</span>
            <span class="red"> không cần đăng ký tài khoản</span>
        </p>
        <div class="text-center video-content">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/OdlfZWusv-I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
</asp:Content>


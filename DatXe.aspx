<%@ Page Title="Đặt Xe" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DatXe.aspx.cs" Inherits="datxe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="datxe">
        <form action="#">
                <div class="error">
                    <p>Khách hàng hãy nhập thông tin bên dưới</p>
                </div>
            <div class="thongtin">
                <input type="text" placeholder="Nhập tên">
                <input type="text" placeholder="Số điện thoại">
                <input type="text" placeholder="Loại xe">
            </div>
            <div class="thanhtoan">
                <h3>Hình thức thanh toán</h3>
                <input type="radio" name="phuongtien">
                <p>Trả góp</p>
                <input type="radio" name="phuongtien">
                <p>Trực tiếp</p>
            </div>
            <div class="phankhuc">
                <h3>Đối tượng</h3>
                <p>SUV</p>
                <input type="radio" id="vip" name="object">
                <p>SEDAN</p>
                <input type="radio" id="binhthuong" name="object">
            </div>
            <div class="loaitien">
                <p>Thanh toán</p>
                <select name="money" id="money">
                    <option value="1">VND</option>
                    <option value="2">USD</option>
                </select>
            </div>
            <div class="ketqua">
                <button>Chấp nhận</button>
                <button>Hủy bỏ</button>
            </div>
        </div>
        </form>
    </div>
    <div class="end">
        <div class="controlImgEnd">
            <a id="logo" href="https://www.bmw.vn" target="_blank"><img src="img/bmw.jpg" title="Click để vào BMW Việt Nam và lựa chọn dòng xe" alt="img">
            <a id="logo" href="https://www.facebook.com/Official.BMWVietnam/" target="_blank"><img src="img/facebook.png" title="Click để vào Facebook" alt="img">
            <a id="logo" href="https://www.instagram.com/bmw/" target="_blank"><img src="img/instagram.png"  title="Click để vào Instagram" alt="img">
            <a id="logo" href="https://www.bmw.vn/vi/ssl/request-a-test-drive.html#/bookmark=aHR0cHM6Ly9ibXcudXNlcnJlZ2lzdHJhdGlvbi5uZXQvZnJvbnQvZm9ybS9ibXctdmlldG5hbS12bi10ZA==" target="_blank"><img src="http://suzukiworld.vn/wp-content/uploads/2017/11/dang-ky-lai-thu.png"  width="100px" title="Click để vào đăng kí lái thử" alt="Đăng kí lái thử" /></a>
        </div>
    </div>
</asp:Content>


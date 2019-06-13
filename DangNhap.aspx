<%@ Page Title="Đăng Nhập" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="dangnhap">
        <div class="error"><p>Nhân viên mới có thể đăng nhập</p></div>
        <form action="#">
            <div class="control_dangnhap_1">
                <h3>Đăng ký</h3>
                <form action="#">
                    <input type="text" placeholder="Tên đăng nhập">
                    <input type="text" placeholder="Mật khẩu">
                    <input type="text" placeholder="Xác nhận mật khẩu">
                    <input type="text" placeholder="Địa chỉ Gmail">
                    <input type="text" placeholder="Số điện thoại cơ quan">
                    <input type="text" placeholder="Số điện thoại cá nhân">
                    <button class="btn_1">Xác nhân</button> 
                    <button class="btn_2">Hủy bỏ</button> 
                </form>
            </div>
            <div class="control_dangnhap_2">
                <form action="#">
                    <h3>Đăng nhập</h3>
                    <input type="text" placeholder="Tên đăng nhập">
                    <input type="password" placeholder="Mật khẩu">
                    <button class="btn_1">Xác nhân</button> 
                    <button class="btn_2">Hủy bỏ</button> 
                </form>
            </div>
            <div class="end">
          
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Tên_nhân_viên" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Tên_nhân_viên" HeaderText="Tên_nhân_viên" SortExpression="Tên_nhân_viên" />
                        <asp:BoundField DataField="Vị_trí" HeaderText="Vị_trí" SortExpression="Vị_trí" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyConnectionString1 %>" DeleteCommand="DELETE FROM [Nhân viên] WHERE [Tên nhân viên] = @Tên_nhân_viên" InsertCommand="INSERT INTO [Nhân viên] ([Tên nhân viên], [Vị trí]) VALUES (@Tên_nhân_viên, @Vị_trí)" ProviderName="<%$ ConnectionStrings:QuanLyConnectionString1.ProviderName %>" SelectCommand="SELECT [Tên nhân viên] AS Tên_nhân_viên, [Vị trí] AS Vị_trí FROM [Nhân viên]" UpdateCommand="UPDATE [Nhân viên] SET [Vị trí] = @Vị_trí WHERE [Tên nhân viên] = @Tên_nhân_viên">
                    <DeleteParameters>
                        <asp:Parameter Name="Tên_nhân_viên" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Tên_nhân_viên" Type="String" />
                        <asp:Parameter Name="Vị_trí" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Vị_trí" Type="String" />
                        <asp:Parameter Name="Tên_nhân_viên" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
          
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


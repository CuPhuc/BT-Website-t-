<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Tên_xe" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Tên_xe" HeaderText="Tên_xe" SortExpression="Tên_xe" />
            <asp:BoundField DataField="Dòng_xe" HeaderText="Dòng_xe" SortExpression="Dòng_xe" />
            <asp:BoundField DataField="Giá_tiền" HeaderText="Giá_tiền" SortExpression="Giá_tiền" />
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Tên_xe" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Tên_xe" HeaderText="Tên_xe" ReadOnly="True" SortExpression="Tên_xe" />
            <asp:BoundField DataField="Dòng_xe" HeaderText="Dòng_xe" SortExpression="Dòng_xe" />
            <asp:BoundField DataField="Giá_tiền" HeaderText="Giá_tiền" SortExpression="Giá_tiền" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyConnectionString1 %>" DeleteCommand="DELETE FROM [Các dòng xe] WHERE [Tên xe] = @Tên_xe" InsertCommand="INSERT INTO [Các dòng xe] ([Tên xe], [Dòng xe], [Giá tiền]) VALUES (@Tên_xe, @Dòng_xe, @Giá_tiền)" ProviderName="<%$ ConnectionStrings:QuanLyConnectionString1.ProviderName %>" SelectCommand="SELECT [Tên xe] AS Tên_xe, [Dòng xe] AS Dòng_xe, [Giá tiền] AS Giá_tiền FROM [Các dòng xe]" UpdateCommand="UPDATE [Các dòng xe] SET [Dòng xe] = @Dòng_xe, [Giá tiền] = @Giá_tiền WHERE [Tên xe] = @Tên_xe">
        <DeleteParameters>
            <asp:Parameter Name="Tên_xe" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tên_xe" Type="String" />
            <asp:Parameter Name="Dòng_xe" Type="String" />
            <asp:Parameter Name="Giá_tiền" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dòng_xe" Type="String" />
            <asp:Parameter Name="Giá_tiền" Type="String" />
            <asp:Parameter Name="Tên_xe" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div class="end">
        <div class="controlImgEnd">
            <a id="logo" href="https://www.bmw.vn" target="_blank"><img src="img/bmw.jpg" title="Click để vào BMW Việt Nam và lựa chọn dòng xe" alt="img">
            <a id="logo" href="https://www.facebook.com/Official.BMWVietnam/" target="_blank"><img src="img/facebook.png" title="Click để vào Facebook" alt="img">
            <a id="logo" href="https://www.instagram.com/bmw/" target="_blank"><img src="img/instagram.png"  title="Click để vào Instagram" alt="img">
            <a id="logo" href="https://www.bmw.vn/vi/ssl/request-a-test-drive.html#/bookmark=aHR0cHM6Ly9ibXcudXNlcnJlZ2lzdHJhdGlvbi5uZXQvZnJvbnQvZm9ybS9ibXctdmlldG5hbS12bi10ZA==" target="_blank"><img src="http://suzukiworld.vn/wp-content/uploads/2017/11/dang-ky-lai-thu.png"  width="100px" title="Click để vào đăng kí lái thử" alt="Đăng kí lái thử" /></a>
        </div>
    </div>
</asp:Content>


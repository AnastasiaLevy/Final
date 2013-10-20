<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfAddEvent.aspx.cs" Inherits="UILayer.ProfessorLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <asp:Panel ID="Panel3" runat="server" BorderColor="#993300" BorderStyle="Solid" ForeColor="#993300" Height="85px" Width="959px">
                <div class="auto-style1">
                    <br />
                    Welcome to Psychology Research Methods</div>
            </asp:Panel>
    
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProfessorMainPage.aspx" style="font-size: x-small; color: #FF6600">Back To Main Page</asp:HyperLink>
            <br />
            <br />
    
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DataObjectTypeName="AnotherOne.Activity" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetAll" TypeName="BusinessLayer.BusinessActivities" UpdateMethod="Update" OnSelecting="ObjectDataSource3_Selecting"></asp:ObjectDataSource>
    
        <asp:Label ID="Label1" runat="server" Text="Update Exams:" ForeColor="#990000"></asp:Label>
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#990000" BorderStyle="Solid">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="ActivityName" HeaderText="ActivityName" SortExpression="ActivityName" />
                <asp:BoundField DataField="Schedule" HeaderText="Schedule" SortExpression="Schedule" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:Panel ID="Panel2" runat="server" Width="330px" BackColor="#FF9900" Height="107px" BorderColor="#993300" BorderStyle="Solid">
            <asp:Label ID="Label3" runat="server" ForeColor="#CC3300" Text="Activity Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="174px" BorderColor="#CC3300" style="margin-left: 26px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" ForeColor="#CC3300" Text="Schedule"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderColor="#CC3300" Height="19px" style="margin-left: 56px" Width="174px" ToolTip="Data Format: yyyy, mm, dd, hour:min"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Add" ForeColor="#990000" OnClick="Button1_Click1" style="width: 53px" />
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>

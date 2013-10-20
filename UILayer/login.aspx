<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UILayer.login" %>

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
        <asp:Panel ID="Panel2" runat="server" BorderColor="#990000" BorderStyle="Solid" ForeColor="#990000" Height="100px" style="margin-top: 0px" Width="945px">
            <div class="auto-style1">
                <br />
                Welcome to Psychology 2010</div>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF9900" BorderColor="#990000" BorderStyle="Solid" Height="176px" Width="297px">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter UserName" OnDataBinding="Button1_Click" Visible="False">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" OnTextChanged="TextBox1_TextChanged" Width="141px" style="margin-left: 23px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="UserName" Font-Names="Nirmala UI" ForeColor="#990000"></asp:Label>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" Visible="False">*</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" OnDataBinding="Button1_Click" Width="138px" style="margin-left: 23px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Password" Font-Names="Nirmala UI" ForeColor="#990000"></asp:Label>
            &nbsp;
            <br />
            &nbsp;
            <br />
            &nbsp;&nbsp;
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#993300" NavigateUrl="~/RegisterUser.aspx">Register</asp:HyperLink>
            <br />
        </asp:Panel>
        <p style="height: 33px; margin-left: 200px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 37px" Text="LogIn" BackColor="#FFCC00" BorderColor="#990000" BorderStyle="Solid" />
        </p>
    </form>
</body>
</html>

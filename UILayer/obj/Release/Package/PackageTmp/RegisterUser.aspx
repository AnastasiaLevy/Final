<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="UILayer.RegisterUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 352px;
            width: 940px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            width: 193px;
        }
        .auto-style4 {
            width: 193px;
            height: 34px;
        }
        .auto-style6 {
            height: 46px;
        }
        .auto-style8 {
            color: #CC3300;
        }
        .auto-style9 {
            width: 211px;
        }
        .auto-style10 {
            height: 34px;
            width: 211px;
        }
        .auto-style11 {
            height: 46px;
            width: 211px;
        }
        .auto-style12 {
            width: 193px;
            height: 47px;
        }
        .auto-style13 {
            height: 47px;
            width: 211px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BorderColor="#990000" BorderStyle="Solid" ForeColor="#990000" Height="92px" Width="933px">
            <div class="auto-style1">
                <br />
                Welcome to Psycjology 2010</div>
        </asp:Panel>
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:ObjectDataSource ID="Labs" runat="server" SelectMethod="GetAll" TypeName="BusinessLayer.BusinessLab"></asp:ObjectDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Panel ID="Panel4" runat="server" BackColor="#FF9900" BorderColor="#990000" BorderStyle="Solid" Height="429px" Width="412px">
            <br />
            <table style="width: 91%; height: 358px; margin-left: 22px;">
                <caption class="auto-style8" style="width: 386px; text-decoration: underline; color: #800000; font-size: medium; background-color: #CC0000">
                    Register you account:<br />
                </caption>
                <tr>
                    <td class="auto-style3">First Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fname" Display="Dynamic" ErrorMessage="Enter your first name" Font-Names="Lucida Handwriting" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">LastName</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lname" Display="Dynamic" ErrorMessage="Enter your last name" Font-Names="Lucida Handwriting" ForeColor="#FF3300">Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">User Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserName" Display="Dynamic" ErrorMessage="Required" Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Required" Font-Names="Lucida Handwriting" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confirm Password</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="confirmPw" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Select Lab </td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="LabList" runat="server" DataSourceID="Labs" DataTextField="Date" DataValueField="Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="confirmPw" Display="Dynamic" ErrorMessage="Password and Confirm Password must match."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" BackColor="#990000" Height="35px" OnClick="Button1_Click" style="margin-left: 48px" Text="Register" Width="109px" />
                    </td>
                </tr>
            </table>
            &nbsp;</asp:Panel>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

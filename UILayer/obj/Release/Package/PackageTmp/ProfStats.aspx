<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfStats.aspx.cs" Inherits="UILayer.ProfStats" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #800000;
        }
        .auto-style2 {
            width: 439px;
        }
        .auto-style3 {
            color: #990000;
        }
        .auto-style4 {
            width: 439px;
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderStyle="Solid" Height="81px">
            <div class="auto-style1">
                <br />
                Welcome to Psychology Research Methods 2010</div>
        </asp:Panel>
        <div>
    
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProfessorMainPage.aspx" style="font-size: x-small; color: #FF9900">Back to Main Page</asp:HyperLink>
    
            <span class="auto-style3">
            <br />
            <br />
            Choose Exam:<br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="ActivityName" DataValueField="ActivityName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll" TypeName="BusinessLayer.BusinessActivities"></asp:ObjectDataSource>
            <br />
            </span>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" BorderColor="Maroon" BorderStyle="Solid" ForeColor="Maroon" Height="31px" OnClick="Button1_Click" Text="Display Stats:" Width="146px" />
            <br />
            <asp:Panel ID="Panel2" runat="server" BackColor="#FF9900" Height="260px" Width="414px">
                <table style="width:100%; height: 193px;">
                    <tr>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#990000" BorderStyle="Solid" Height="25px" OnTextChanged="TextBox1_TextChanged" Width="176px"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#990000" BorderStyle="Solid" Height="23px" style="margin-left: 22px" Width="94px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#993300" BorderStyle="Solid" Height="25px" Width="176px"></asp:TextBox>
                            <asp:TextBox ID="TextBox4" runat="server" BorderColor="#993300" BorderStyle="Solid" style="margin-left: 22px" Width="94px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox5" runat="server" BorderColor="#993300" BorderStyle="Solid" Height="25px" Width="176px"></asp:TextBox>
                            &nbsp;<asp:TextBox ID="TextBox6" runat="server" BorderColor="#993300" BorderStyle="Solid" style="margin-left: 19px" Width="94px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox7" runat="server" BorderColor="#993300" BorderStyle="Solid" Height="25px" Width="176px"></asp:TextBox>
                            <asp:TextBox ID="TextBox8" runat="server" BorderColor="#993300" BorderStyle="Solid" style="margin-left: 22px" Width="94px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
    
    </div>
        <p>
                            <asp:TextBox ID="TextBox9" runat="server" BackColor="#FF9900" BorderStyle="None" ForeColor="Red" Width="552px" Height="16px" style="background-color: #FFFFFF"></asp:TextBox>
                        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfAddGrade.aspx.cs" Inherits="UILayer.AddGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 66px;
            width: 347px;
            margin-left: 63px;
            margin-top: 41px;
        }
        .auto-style1 {
            color: #990000;
            text-decoration: underline;
            font-weight: 700;
        }
        #form1 {
            color: #003366;
        }
        .auto-style3 {
            text-align: center;
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BorderColor="#990000" BorderStyle="Solid" Height="76px">
            <div class="auto-style3">
                <br />
                Welcome to Psychology Research Methods 2010&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProfessorMainPage.aspx" style="font-size: x-small; color: #FF6600">Back To Main Page</asp:HyperLink>
        <br />
        <br />
        <span class="auto-style1">Select Event:<br />
        </span><br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="ActivityName" DataValueField="Id" Height="25px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 28px" Width="76px">
        </asp:DropDownList>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAll" TypeName="BusinessLayer.BusinessActivities"></asp:ObjectDataSource>
        </div>
        <p class="auto-style1">
            Enter a Comment for the Exam:</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" BackColor="#FF9900" BorderColor="#990000" BorderStyle="Solid" Height="79px" Width="385px" style="font-weight: 700; color: #003366">
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="335px" BorderColor="#990000" BorderStyle="Groove"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#FFCC66" BorderColor="#990000" BorderStyle="Inset" ForeColor="Maroon" Height="27px" OnClick="Button2_Click" style="margin-left: 11px" Text="Add" Width="44px" />
            <br />
            <br />
            <span class="auto-style1">Enter Values: </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC66" BorderColor="Maroon" BorderStyle="Inset" ForeColor="Maroon" Height="27px" OnClick="Button1_Click" style="margin-left: 19px" Text="Save" Width="53px" />
            <br />
            <br />
            <asp:Panel ID="pn" runat="server" BackColor="White" BorderColor="#993300" BorderStyle="None" Height="87px" Width="481px">
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
            </asp:Panel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    </form>
</body>
</html>

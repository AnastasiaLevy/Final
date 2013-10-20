<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfessorMainPage.aspx.cs" Inherits="UILayer.ProfrssorMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #990000;
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 690px">
    
        <asp:Panel ID="Panel3" runat="server" BorderColor="#993300" BorderStyle="Solid" Direction="LeftToRight" Height="70px" Width="1070px">
            <div class="auto-style1">
                <br />
                Welcome to Psycology Research Methods 2010</div>
        </asp:Panel>
&nbsp;&nbsp;
        <asp:Panel ID="Panel4" runat="server" BackColor="#FF9933" BorderColor="#990000" BorderStyle="Solid" Height="380px" Width="300px">
            <asp:Panel ID="Panel5" runat="server" BackColor="#FFFF99" BorderColor="#993300" BorderStyle="Solid" Height="305px" style="margin-left: 57px; margin-top: 42px" Width="171px">
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Maroon" NavigateUrl="~/ProfAddEvent.aspx">Add an Exam</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Maroon" NavigateUrl="~/ProfAddGrade.aspx" OnDataBinding="Page_Load">Insert Grades</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Maroon" NavigateUrl="~/ProfEditGrades.aspx">Update Grade</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Maroon" NavigateUrl="~/ProfStats.aspx">Statistics</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Maroon" NavigateUrl="http://www.uccs.edu/">UCCS</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Maroon" NavigateUrl="http://www.apa.org/">APA</asp:HyperLink>
                <br />
            </asp:Panel>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>

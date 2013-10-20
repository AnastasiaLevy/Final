<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfEditGrades.aspx.cs" Inherits="UILayer.ProfEditGrades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 49px;
            width: 584px;
        }
    </style>
</head>
<body style="height: 384px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="Panel2" runat="server" BorderColor="#990000" BorderStyle="Solid" Height="91px" style="text-align: center; color: #990000; margin-bottom: 46px" Width="1057px">
                <br />
                Welcome to Psychology Research Methods</asp:Panel>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProfessorMainPage.aspx" style="font-size: x-small; color: #FF6600">Back To Main Page</asp:HyperLink>
            <br />
            <asp:Panel ID="Panel3" runat="server" Font-Size="Large" style="color: #990000">
                Update Student&#39;s Grade:</asp:Panel>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#FF9900" BorderColor="#990000" BorderStyle="Solid" CellPadding="4" DataSourceID="ObjectDataSource1" Font-Names="Modern No. 20" Font-Size="Larger" ForeColor="#333333" GridLines="None" style="margin-top: 39px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Fname" HeaderText="First Name:" ReadOnly="True" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Last Name:" ReadOnly="True" SortExpression="Lname" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade:" SortExpression="Grade" />
                    <asp:BoundField DataField="Exam" HeaderText="Exam:" ReadOnly="True" SortExpression="Exam" />
                </Columns>
                <EditRowStyle BorderColor="#990000" BorderStyle="Inset" />
                <EmptyDataRowStyle BorderStyle="Dotted" />
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectForTable" TypeName="ServiceLayer.GradeAdventure" UpdateMethod="UpdateGrade">
                <UpdateParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="Value" Type="Int32" />
                    <asp:Parameter Name="ActivityName" Type="String" />
                    <asp:Parameter Name="Grade" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </asp:Panel>
    </form>
</body>
</html>

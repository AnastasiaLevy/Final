<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="UILayer.MemberPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcom to Psychology 2010</title>
</head>

<body style="height: 506px; width: 946px; margin-left: 0px;">
    
    <form id="form1" runat="server">
    
        <asp:Panel ID="Panel3" runat="server" BorderColor="#993300" BorderStyle="Solid" Direction="LeftToRight" Height="70px" Width="1070px">
            <h4 style="color: #800000; text-align: left; height: 51px; width: 1064px">Welcome to Psychology 2010&nbsp;&nbsp; Research Methods,
                <asp:Label ID="lbUserName" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
        </asp:Panel>
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF9900" NavigateUrl="http://www.uccs.edu/">UCCS</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF9900" NavigateUrl="http://www.apa.org/">APA Organization</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#FF9900" NavigateUrl="https://owl.english.purdue.edu/owl/resource/560/01/">OWL Writing Resourse</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="411px" Width="375px" BackColor="#FF9900" BorderColor="#990000" BorderStyle="Solid" style="margin-left: 0px">
            Grades :<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#990000" BorderStyle="Solid" CellPadding="4" DataSourceID="Grade" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 67px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Exam:" SortExpression="Id" />
                    <asp:BoundField DataField="Value" HeaderText="Grade:" SortExpression="Value" />
                    <asp:BoundField DataField="ActivityId" HeaderText="ActivityId" SortExpression="ActivityId" Visible="False" />
                    <asp:BoundField DataField="PersonId" HeaderText="PersonId" SortExpression="PersonId" Visible="False" />
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
            <asp:ObjectDataSource ID="Grade" runat="server" OnSelecting="Grade_Selecting" SelectMethod="SearchByUserName" TypeName="BusinessLayer.BusinessGrade">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="Id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            Stats:<br />
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#990000" BorderStyle="Solid" Height="47px" Width="350px" style="margin-left: 8px"></asp:TextBox>
            <br />
            <br />
            <br />
            Message from Dr. James:<br /> <br />
            <asp:Panel ID="Panel4" runat="server" Height="283px" Width="414px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Comment" ForeColor="#333333" GridLines="None" Width="251px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                        <asp:BoundField DataField="ActivityId1" HeaderText="ActivityId1" SortExpression="ActivityId1" Visible="False" />
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
                <asp:ObjectDataSource ID="Comment" runat="server" SelectMethod="GetAll" TypeName="BusinessLayer.BusinessComments"></asp:ObjectDataSource>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
    </form>
    
</body>
</html>

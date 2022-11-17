<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dataBasePage.aspx.vb" Inherits="SalesStaffWebPage.dataBasePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  Sale Staff Members</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 342px;
        }
        .auto-style2 {
            width: 316px;
            margin-left: 600px;
        }
        .auto-style3 {
            margin-left: 671px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" dir="ltr" draggable="true">
        <div dir="ctr">
            <h2 class="auto-style2" dir="ltr">&nbsp;</h2>
            <h2 class="auto-style2" dir="ltr">Sales Staff Information</h2>
        </div>
        <p dir="ltr">
            &nbsp;</p>
        <p dir="ltr">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="SalesStaffDataSource" GridLines="None" Height="50px" HorizontalAlign="Center" Width="733px">
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                    <asp:CheckBoxField DataField="Full_Time" HeaderText="Full Time" SortExpression="Full_Time">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                    <asp:BoundField DataField="Hire_Date" DataFormatString="{0:d}" HeaderText="Hire Date" SortExpression="Hire_Date">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Salary" DataFormatString="{0:c}" HeaderText="Salary" SortExpression="Salary">
                    <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:CommandField ShowEditButton="True">
                    <ItemStyle BorderStyle="Double" />
                    </asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:DetailsView>
        </p>
        <asp:SqlDataSource ID="SalesStaffDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SalesStaff] WHERE [ID] = @ID" InsertCommand="INSERT INTO [SalesStaff] ([ID], [Last_Name], [First_Name], [Full_Time], [Hire_Date], [Salary]) VALUES (@ID, @Last_Name, @First_Name, @Full_Time, @Hire_Date, @Salary)" SelectCommand="SELECT [ID], [Last_Name], [First_Name], [Full_Time], [Hire_Date], [Salary] FROM [SalesStaff]" UpdateCommand="UPDATE [SalesStaff] SET [Last_Name] = @Last_Name, [First_Name] = @First_Name, [Full_Time] = @Full_Time, [Hire_Date] = @Hire_Date, [Salary] = @Salary WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Full_Time" Type="Boolean" />
                <asp:Parameter Name="Hire_Date" Type="DateTime" />
                <asp:Parameter Name="Salary" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Full_Time" Type="Boolean" />
                <asp:Parameter Name="Hire_Date" Type="DateTime" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="BtnLogout" runat="server" BorderStyle="Double" CssClass="auto-style3" Text="Logout" ToolTip="Click To Logout" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="EmployeePayRollWebForm.Pages.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Include only one Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-9" style="margin: 0px auto;">
                </div>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Default.aspx">Home</asp:HyperLink>
                <asp:GridView ID="Gridview1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" OnRowDeleting="Gridview1_RowDeleting" OnSelectedIndexChanged="Gridview1_SelectedIndexChanged" DataKeyNames="EmpId" OnRowEditing="Gridview1_RowEditing" OnRowUpdating="Gridview1_RowUpdating" OnRowCancelingEdit="Gridview1_RowCancelingEdit" CellSpacing="1" GridLines="None">
                    <Columns>
                        <asp:BoundField HeaderText="EmployeeID" DataField="EmpID" />
                        <asp:BoundField HeaderText="Employee Name" DataField="Name" />
                        <asp:TemplateField HeaderText="Employee Image" Visible="true">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PofileImage") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Gender" DataField="Gender" />
                        <asp:BoundField HeaderText="Department" DataField="Deparrtment" />
                        <asp:BoundField HeaderText="Salary" DataField="Salary" />
                        <asp:BoundField HeaderText="Start Date" DataField="StartDate" />
                        <asp:BoundField HeaderText="Notes" DataField="Notes" />
                        <asp:CommandField ShowDeleteButton="true" HeaderText="Remove Record" ButtonType="Button">
                            <ControlStyle CssClass="btn btn-danger" />
                        </asp:CommandField>
                        <asp:CommandField ShowEditButton="true" HeaderText="Edit Record">
                            <ControlStyle CssClass="btn btn-primary" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
            </div>
        </div>
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1222px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" />
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EmployeePayRollWebForm.Pages.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" runat="server" href="~/">EMPLOYEE PAY ROLL</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item"><a class="nav-link" runat="server" href="Default.aspx"><--BACK</a></li>

                </ul>
            </div>
            <div style="float: right;">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item"><a class="nav-link" runat="server" href="ULogin.aspx">Update</a></li>
                </ul>
            </div>
            <div style="float: right;">
                <ul class="navbar-nav flex-grow-1">
                    <li class="nav-item"><a class="nav-link" runat="server" href="DLogin.aspx">Delete</a></li>
                </ul>
                </div>
            </div>
    </nav>
    <form id="form1" runat="server">
        <center>
            <asp:GridView ID="GridView1" runat="server" BackColor="skyblue" BorderColor="White" ForeColor="Black" Width="1000px" AutoGenerateColumns="False">
                <HeaderStyle BackColor="red" />

                <Columns>
                    <asp:BoundField DataField="EmpID" HeaderText="EmpID" SortExpression="EmpId" Visible="true" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" Visible="true" />
                    <asp:TemplateField HeaderText="Student Image" Visible="true">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PofileImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Gender" HeaderText="Address" SortExpression="Student_Address" Visible="true" />
                    <asp:BoundField DataField="Deparrtment" HeaderText="Department" SortExpression="Email" Visible="true" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Branch" Visible="true" />
                    <asp:BoundField DataField="StartDate" HeaderText="Date" SortExpression="Reg_Date" Visible="true" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Reg_Date" Visible="true" />


                </Columns>
            </asp:GridView>
        </center>
    </form>
</body>
</html>
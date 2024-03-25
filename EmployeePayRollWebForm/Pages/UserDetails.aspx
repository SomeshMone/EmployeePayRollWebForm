<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="EmployeePayRollWebForm.Pages.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .button{
            display:flex;
            justify-content:flex-end;
            padding-right: 120px;
            padding-top:50px;
        }
        .button1{
            display:flex;
            justify-content:start;
            padding-left: 120px;
            padding-top: 50px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="button">
            <asp:Button ID="Button1" runat="server" BackColor="#9900FF" ForeColor="Black" OnClick="Button1_Click" Text="Logout" />
            
            <asp:Button ID="Button2" runat="server" Text="Edit" BackColor="#FF9933" ForeColor="#663300" OnClick="Button2_Click" Width="69px" />
            
        </div>
        <div class="button1">
        </div>

         <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3"   DataKeyNames="EmpId"   CellSpacing="2">
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
        
         
     </Columns>
             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FFF1D4" />
             <SortedAscendingHeaderStyle BackColor="#B95C30" />
             <SortedDescendingCellStyle BackColor="#F1E5CE" />
             <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
       
    </form>
</body>
</html>

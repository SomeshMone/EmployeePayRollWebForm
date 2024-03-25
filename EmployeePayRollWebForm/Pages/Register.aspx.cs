using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace EmployeePayRollWebForm.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connectionString = @"Data Source=LAPTOP-HFJ7MFRU\SQLEXPRESS;Initial Catalog=""MY Test_DB"";Integrated Security=True;TrustServerCertificate=True";

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection  conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string image = "";
                if (RadioButton1.Checked)
                {
                    image = Image1.ImageUrl;

                }
                else if(RadioButton2.Checked)
                {
                    image= Image2.ImageUrl;
                }
                else if (RadioButton3.Checked)
                {
                    image= Image3.ImageUrl;
                }
                else
                {
                    image= Image4.ImageUrl;
                }

                SqlCommand cmd = new SqlCommand("Employee_SP", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@ProfileImage", image);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@Department",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Salary", TextBox4.Text);
                cmd.Parameters.AddWithValue("@StartDate", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Notes", TextBox3.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx");
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollWebForm.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connectionString = @"Data Source=LAPTOP-HFJ7MFRU\SQLEXPRESS;Initial Catalog=""MY Test_DB"";Integrated Security=True;TrustServerCertificate=True";
        protected void Button_Login(object sender, EventArgs e)
        {
            using(SqlConnection conn=new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("Login_SP", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                int Id = int.Parse(TextBox1.Text);
                string Name = TextBox2.Text;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Name", Name);
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dataReader = cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    Session["Id"] = dataReader["EmpID"];
                    Session["Name"] = dataReader["Name"];
                }
                if (Id.Equals(Session["Id"]) && Name.Equals(Session["Name"]))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login sucessfull');", true);
                    Response.Redirect("UserDetails.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login failed');", true);
                    Response.Redirect("Default.aspx");

                }
            }


        }
    }
}
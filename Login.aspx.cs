using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            try
            {
                conn.Open();
                string Emailid = EmailTextBox.Text;
                string password = PasswordTextBox.Text;

                quary= "select EmailID from Authentication where Emailid='" + Emailid + "'and Password='" + password + "'";
                SqlCommand cmd = new SqlCommand(quary,conn);
                SqlDataReader rdr= cmd.ExecuteReader();
                if (rdr.Read())
                {
                    LoginError.Text = "Login success";
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    LoginError.Text = "Invalid Emailid or password";
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
               conn.Close();
            }

            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
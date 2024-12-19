using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Library_Management
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["Constring"]);
            quary = "insert into Authentication(Name,Emailid,Password,Confirmpassword)" + "values(@Name,@Emailid,@Password,@confirmpassword)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(quary, conn);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Emailid", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password",txtPassword.Text);
                cmd.Parameters.AddWithValue("@Confirmpassword", txtConfirmPassword.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

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
    }
}
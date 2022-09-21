using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyEshoppingWebsitee
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
           

        }
        

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString)) ;
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("Insert into EUsers(Username,Password,Name,Email) Values ('" + txtUname.Text + "', '" + txtpassword.Text + "',  '" + txtname.Text + "', '" + txtemail.Text + "')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<Script> alert('Registration Successfully done!') </Script>");
                    Clr();
                    con.Close();
                    Label3.Text = "Registration Successfully done!";
                    Label3.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("~/Sign In.aspx");
                }
            }
            else
            {
                Response.Write("<Script> alert('Registration failed') </Script>");
                Label3.Text = "All fields are mandatory";
                Label3.ForeColor = System.Drawing.Color.Red;

            }
        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<Script> alert('Username is invalid') </Script>");
                txtUname.Focus();
                return false;
            }
           else if (txtpassword.Text == "")
            {
                Response.Write("<Script> alert('password is invalid') </Script>");
                txtcpassword.Focus();
                return false;
            }

            if (txtpassword.Text != txtcpassword.Text)
            {
                Response.Write("<Script> alert('Confirm password is not valid') </Script>");
                txtcpassword.Focus();
                return false;
            }
            if (txtemail.Text== "")
            {
                Response.Write("<Script> alert('Email is invalid') </Script>");
                txtemail.Focus();
                return false;
            }

            if (txtname.Text == "")
            {
                Response.Write("<Script> alert('Username is invalid') </Script>");
                txtname.Focus();
                return false;
            }

            return true;
            throw new NotImplementedException();
        }
        private void Clr()
        {
            txtUname.Text = String.Empty;
            txtpassword.Text = String.Empty;
            txtemail.Text = String.Empty;
            txtname.Text = String.Empty;
            txtcpassword.Text = String.Empty;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;
using MessageBox = System.Windows.Forms.MessageBox;

namespace dim
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void passcheck_CheckedChanged(object sender, EventArgs e)
        { 
        }
        public static string text;
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text) && !string.IsNullOrEmpty(TextBox2.Text))
            {
                
                if (TextBox1.Text=="Ahmad" && TextBox2.Text=="Admin" )
                { 
                    Response.Redirect("~/Admin.aspx");


                }
                string mysql = string.Empty;
                mysql += "SELECT * FROM customer1 ";
                mysql += "Where Username ='" + TextBox1.Text + "'";
                mysql += "AND Password ='" + TextBox2.Text + "'";
                DataTable userdata = dim.NewFolder1.ConnectionString.executeSQL(mysql);
                if (userdata.Rows.Count > 0)
                {   
                    text = TextBox1.Text;
                        Response.Redirect("~/main.aspx");
                    
                }
                else
                { 
                    System.Windows.MessageBox.Show("Incorrect Username or Password , Make sure to write them correctly", "C# LOGIN");
                    TextBox1.Focus();
                }
            }
           

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
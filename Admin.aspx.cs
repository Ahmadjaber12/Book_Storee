using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace dim
{
    public partial class Admin : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();


            for (int i = 0; i < x.Rows.Count; i++)
            {
                DataTable xx = dim.NewFolder1.ConnectionString.executeSQL("select count (DISTINCT BookID) from BOOKSS where CustomerID=" + (i+1));
                lis.Add(xx.Rows[0][0].ToString());

            }
        }

        public static List<string> lis = new List<string>();
        

        public DataTable x = dim.NewFolder1.ConnectionString.executeSQL("SELECT Username ,FName FROM customer1");


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Label1.Text = "";
            if (TextBox1.Text !="")
            {
                if (Library.list1.Contains(TextBox1.Text))
                {   
                    Label1.Text = " This book is Already Exist!";
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:hide(); ", true);

                }
                else
                {  Library.list1.Add(TextBox1.Text); 
                    string sql = string.Empty;
                    sql += "INSERT INTO book (bookname,Groupname) VALUES" + "(('" + TextBox1.Text + "'),('" + DropDownList1.SelectedItem.Value + "'))";
                    dim.NewFolder1.ConnectionString.executeSQL(sql);
                    ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:fire(); ", true);
                }
            }
            else
            {
                TextBox1.Focus();
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:hide(); ", true);

            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
           
        }

      
    }
}
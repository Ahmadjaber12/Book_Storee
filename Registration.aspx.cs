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
using TextBox = System.Windows.Forms.TextBox;

namespace dim
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.CssClass = "label2";
            Label3.CssClass = "label2";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
 
            if (repassTextBox5.Text != passTextBox4.Text)

            {
                Label3.CssClass = "mm";
                repassTextBox5.Focus();
                return;
            }
            
            string sq = string.Empty;
            sq += "SELECT * from customer1 where customer1.Username='" + unameTextBox3.Text + "'" ;
              DataTable dt = dim.NewFolder1.ConnectionString.executeSQL(sq);
                if (dt.Rows.Count > 0)
            {
                Label1.CssClass = "mm";
                /*DialogResult x = MessageBox.Show("The Username is Already Exists!! Do you want to upddate informations?", "invalid Entry", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (x == DialogResult.Yes)
                {
                    string sql = string.Empty;
                    sql += "UPDATE Customer SET FName ='" + firstname.Text + "',";
                    sql += "LName = '" + lnameTextBox2.Text + "'," + "Username='" + unameTextBox3.Text + "'" + " ,Password='" + passTextBox4.Text + "' " + " WHERE ID = (SELECT Customer.ID where Customer.Username='" + unameTextBox3.Text + "')";
                    dim.NewFolder1.ConnectionString.executeSQL(sql);
                    string sqll = string.Empty;
                    sqll += "DELETE FROM BandC WHERE CustomerID in (select Customer.ID from Customer where Customer.Username='" + unameTextBox3.Text + "')";
                    dim.NewFolder1.ConnectionString.executeSQL(sqll);
                    foreach (string D in Library.list)
                    {
                        // string ss = "UPDATE categoryandcustomer SET CustomerID" + "=(SELECT customer.ID from customer where customer.Username='" + unametextBox1.Text + "'),";
                        // ss += "CategoryID=(SELECT CategoryID FROM Category where Category.CategoryName='" + D + "')";
                        // dimentions.serverconnection.serverconnectionn.executeSQL(ss);
                        //خليها انسيرت بدل ابديت
                        string ss = "INSERT INTO BandC  (CustomerID,BookID) VALUES ((SELECT Customer.ID FROM Customer WHERE Customer.Username='" + unameTextBox3.Text + "')" + ",(SELECT BOOK.BOOKID FROM BOOK where BOOK.BOOKName='" + D + "'))";
                        dim.NewFolder1.ConnectionString.executeSQL(ss);
                    }

                    MessageBox.Show("the record has been Updated Seccessfully", "Update Process", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    cleartext();
                    Response.Redirect("~/Login.aspx");
                }*/
                unameTextBox3.Focus();
            }
            else if (dt.Rows.Count == 0)
            {
                    
                    string sql = string.Empty;
                    sql += "INSERT INTO customer1 (FName,LName,Username,Password)";
                    sql += "VALUES ('" + firstname.Text + "','" + lnameTextBox2.Text + "','" + unameTextBox3.Text + "','" + passTextBox4.Text + "')";
                    dim.NewFolder1.ConnectionString.executeSQL(sql);
                    MessageBox.Show("the record has been inserted", "insertion process", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    string sql2 = string.Empty;
                    foreach (string str in Library.list)
                    {
                        sql2 += "INSERT INTO BOOKSS (CustomerID,BookID)";
                        sql2 += "VALUES ((SELECT customer1.ID FROM customer1 where customer1.Username='" + unameTextBox3.Text + "')" + ",(SELECT book.bookid FROM book where book.bookname='" + str + "'))";
                       dim.NewFolder1.ConnectionString.executeSQL(sql2);
                    }
                    cleartext();
                     
                    Response.Redirect("~/Login.aspx");

                

            }
        }
            private void cleartext()
            {
            foreach (var item in Page.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Text = "";
                }
            }
            firstname.Focus();
            }
        
    }
}
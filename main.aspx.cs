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
    public partial class main : System.Web.UI.Page
    { public static DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        { string sql=string.Empty;
            dt = dim.NewFolder1.ConnectionString.executeSQL(sql); 
            





        }
        public void loaduserdata()
        {
            //DataTable userdata = dim.NewFolder1.ConnectionString.executeSQL("SELECT DISTINCT book.bookname  from customer1 JOIN BOOKSS ON customer1.ID = BOOKSS.CustomerID JOIN book ON book.bookid = BOOKSS.BookID where Username = '" + Login.text + "'");




            // DataTable userdata1 = dim.NewFolder1.ConnectionString.executeSQL("select TOP(5)  book.bookname from book join((SELECT bookid FROM  book)EXCEPT(select BOOKSS.BookID from BOOKSS where (select customer1.ID from customer1 where customer1.Username = '" + Login.text + "'" + ") = BOOKSS.CustomerID))as x on x.BOOKID = book.bookid");




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                //DataTable ud = dim.NewFolder1.ConnectionString.executeSQL("DELETE FROM BOOKSS WHERE CustomerID in (select customer1.ID from customer1 where customer1.Username='" + Login.text + "'" + ") AND BookID in(  SELECT book.bookid FROM book WHERE book.bookname='" + namebook + "' )");
                //DataTable userd = dim.NewFolder1.ConnectionString.executeSQL("INSERT INTO BOOKSS VALUES((select customer1.ID from customer1 where customer1.Username='" + Login.text + "'" + "),(SELECT book.bookid FROM book WHERE book.bookname='" + //nameboo + "'))");

                //loaduserdata(); }

            }


        }


    }
}

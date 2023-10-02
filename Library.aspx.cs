using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;
using System.Drawing;

namespace dim
{
    public partial class Library : System.Web.UI.Page
    { 
        public static List<string> list = new List<string>();
        public static List<string> list1 = new List<string>();
      public static  DataTable dataTable = NewFolder1.ConnectionString.executeSQL("select bookname from book");

        protected void Page_Load(object sender, EventArgs e)
        { list1.Clear(); 
            foreach (DataRow dr in dataTable.Rows)
            { list1.Add(dr[0].ToString());
                CheckBox cb = new CheckBox();
                this.form1.Controls.Add(cb);
                cb.Text = (dr[0].ToString());
                cb.Style.Add("position", "relative");
                cb.Style.Add("top", "300px");
                cb.Style.Add("display", "inline-block");
                cb.Style.Add("width", "200px");
                cb.Style.Add("height", "200px");
                cb.Style.Add("font-size", "20px");
                cb.Style.Add("color", "white");



            }            list.Clear();
    }

        protected void SAVE_Click(object sender, EventArgs e)
        {
            foreach (Control x in this.form1.Controls)
                    if (x is CheckBox)
                    { if ((x as CheckBox).Checked ==true)
                       list.Add(((CheckBox)x).Text); }
            if (list.Count > 0)
            {
                Response.Redirect("~/Registration.aspx");
            }
            else if (list.Count == 0)
            {
                
                    Label2.CssClass = "mm";
                    
            }               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            list.Clear();
            Response.Redirect("~/Library.aspx");

        }

        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}
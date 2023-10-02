using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Windows;
using MessageBox = System.Windows.Forms.MessageBox;

namespace dim.NewFolder1
{
    public class ConnectionString
    {
        public static string Con = "Data Source=ABU-ZAIN123;Initial Catalog=BOOKSSTORE;Integrated Security=True";
        public static DataTable executeSQL(string sql)
        {


            SqlConnection connection = new SqlConnection();

            SqlDataAdapter adapter = default(SqlDataAdapter);

            DataTable dt = new DataTable();
            try
            { 
                connection.ConnectionString = Con;
                connection.Open();
                adapter = new SqlDataAdapter(sql, connection);
                adapter.Fill(dt);
                connection.Close();
                connection = null;
                return dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString(), "INVALID");


                dt = null;
            }
            return dt;

        }
    }
}
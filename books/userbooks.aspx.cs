using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace books
{
    public partial class userbooks : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\bookstoredb.mdf;Integrated Security=True");
        int userid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            userid = int.Parse(Request.QueryString["userid"]);

            string sql = "SELECT * FROM books,userbook where books.Id=userbook.bookid AND userid =" + userid;
            SqlDataSource1.SelectCommand = sql;
            GridView1.DataBind();
        }
    }
}
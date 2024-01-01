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
    public partial class user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\bookstoredb.mdf;Integrated Security=True");

        int userid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            userid = int.Parse(Request.QueryString["userid"]);
            FormView1.Visible = false;

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM books where Id=" + GridView1.SelectedRow.Cells[1].Text;
            SqlDataSource2.SelectCommand = sql;
            FormView1.DataBind();
            FormView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO userbook Values(" + GridView1.SelectedRow.Cells[1].Text + "," + userid + ")";
            cmd.ExecuteNonQuery();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userbooks.aspx?userid=" + userid);

        }
    }
}
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
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\bookstoredb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            string cmd = "SELECT * FROM users where username='" + username.Text + "' AND password = '" + password.Text+"'";
            SqlCommand com = new SqlCommand(cmd, con);
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = com;
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if(ds.Tables[0].Rows.Count >0)
            {
                if (ds.Tables[0].Rows[0]["type"].ToString() == "user")
                    Response.Redirect("user.aspx?userid="+int.Parse(ds.Tables[0].Rows[0]["id"].ToString()));
                else
                    if (ds.Tables[0].Rows[0]["type"].ToString() == "manager")
                    Response.Redirect("manager.aspx");
            }
            else
            {
                loginlbl.Visible = true;
                loginlbl.Text = "check your username and password";
            }
        }
    }
}
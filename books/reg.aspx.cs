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
    public partial class reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\bookstoredb.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
            f_namelbl.Visible = false;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
           if((f_name.Text != "")&& (l_name.Text != "") && (email.Text != "") && (username.Text != "") && (password.Text != ""))
            {
                if(password.Text == rpassword.Text)
                {
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO users Values(N'"+f_name.Text+"',N'"+l_name.Text+"',N'"+email.Text+"',N'"+username.Text+"',N'"+password.Text+"','user')";
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    passwordlbl.Text = "check your password and repeat password";
                    passwordlbl.Visible = true;

                }
            }
           else
            {
                if(f_name.Text == "")
                {
                    f_namelbl.Text = "please enter your first name";
                    f_namelbl.Visible = true;
                }
                if (l_name.Text == "")
                {
                    l_namelbl.Text = "please enter your last name";
                    l_namelbl.Visible = true;
                }
                if (email.Text == "")
                {
                    emaillbl.Text = "please enter your email";
                    emaillbl.Visible = true;
                }
                if (username.Text == "")
                {
                   usernamelbl.Text = "please enter your user name";
                    usernamelbl.Visible = true;
                }
                if (password.Text == "")
                {
                    passwordlbl.Text = "please enter your password";
                    passwordlbl.Visible = true;
                }
               
            }
        }
    }
}
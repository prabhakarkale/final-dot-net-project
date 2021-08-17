using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class SignIn : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlusertype_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedIndex = ddlusertype.SelectedIndex;
        if (selectedIndex == 1)
        {
            Response.Write("Patient");
        }
        else if (selectedIndex == 2)
            Response.Write("Dcotor");
        else if (selectedIndex == 3)
            Response.Write("Admin");
        else
            Response.Write("wrong");
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtpassword.Text = "";
        txtusername.Text = "";
        ddlusertype.ClearSelection();
    }
    protected void btnsignin_Click(object sender, EventArgs e)
    { 
            
        int selectedIndex = ddlusertype.SelectedIndex;
        if (selectedIndex == 1)
        {
            conn.Open();
            string sql = "SELECT phone, first_name, last_name from patients WHERE  (phone = '"+txtusername.Text+"') AND (password = '"+txtpassword.Text+"')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Server.Transfer("./Patient/HomePage.aspx");
            }
            conn.Close();
        }
        else if (selectedIndex == 2)
        {
            conn.Open();
            string sql = "SELECT email, first_name, last_name from doctors WHERE  (email = '" + txtusername.Text + "') AND (password = '" + txtpassword.Text + "')";
            SqlCommand cmd2 = new SqlCommand(sql, conn);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                Server.Transfer("./Doctor/HomePage.aspx");
            }
            conn.Close();
        }
        else if (selectedIndex == 3)
        {
            conn.Open();
            string sql = "SELECT email, first_name, last_name from user_master WHERE  (email = '" + txtusername.Text + "') AND (password = '" + txtpassword.Text + "')";
            SqlCommand cmd3 = new SqlCommand(sql, conn);
            SqlDataReader dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {
                Server.Transfer("./Admin/AdminHomePage.aspx");
            }
            conn.Close();
        }
        else
            Response.Write("wrong");
    }
}
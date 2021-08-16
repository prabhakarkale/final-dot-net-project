using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddNewUser : System.Web.UI.Page
{
    SqlConnection conn=null;
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack)
        {
            /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select * from user_master";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            Console.Write("came");
            
            conn.Close();*/
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO user_master(first_name, last_name, email, phone, adhar_no, date_of_join, password, acc_status)"
                + " VALUES (@first_name, @last_name,@email, @phone, @adhar_no, @date_of_join, @password, @acc_status)";
            //string insertQuery = "insert into RegisterDataBase(StudentName,Passwords,EmailId,Department,College)values (@studentname,@passwords,@emailid,@department,@college)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@first_name", txtfname.Text);
            cmd.Parameters.AddWithValue("@last_name", txtlname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@adhar_no", txtaadhaar.Text);
            cmd.Parameters.AddWithValue("@date_of_join", txtselecteddate.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@acc_status", txtaccstatus.Text);
            cmd.ExecuteNonQuery(); 
        }
        catch (Exception ex)
        {
            Response.Write("Error " + ex.Message.ToString());
        }

    }
}